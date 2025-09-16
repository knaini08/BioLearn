//
//  CreateView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 3/13/25.
//

import SwiftUI
import PhotosUI

let maxAllowedCharacters = 7500

struct CreateView: View {
    @AppStorage("dailyRequestCount") var dailyRequestCount = 0
    @AppStorage("lastRequestDate") var lastRequestDate = ""
    var dailyLimit: Int {
            switch subscriptionLevel {
            case "Pro": return 50
            case "Plus": return 10
            default: return 0
            }
        }
    @AppStorage("subscriptionLevel") var subscriptionLevel: String = "Free"


    func canMakeRequest() -> Bool {
        let today = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .none)
        if lastRequestDate != today {
            dailyRequestCount = 0
            lastRequestDate = today
        }
        return dailyRequestCount < dailyLimit
    }

    func incrementRequestCount() {
        dailyRequestCount += 1
    }
    @State private var showPaywall = false
    @Environment(\.colorScheme) var colorScheme
    @State private var showQuizSheet = false
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var extractedText: String = ""
    @State private var resultText: String = ""
    @State private var selectedDifficulty = "Easy"
    @State private var selectedLength = 10
    @State private var selectedInputType = "Image"
    @State private var selectedType = "Both"
    @State private var showSummarySheet = false
    @State private var summaryInputType = "Image"
    @State private var summaryText: String = ""
    @State private var selectedSummaryLength = "2-3 Sentences"
    @State private var showExplainSheet = false
    @State private var questionToExplain = ""
    @State private var selectedquestions = "MCQ"

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.12, green: 0.24, blue: 0.18).ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 20) {
                        Image("PurchaseImage")
                            .resizable()
                            .frame(width: 164, height: 60)
                            .onTapGesture {
                                                showPaywall = true
                                            }
                        Text("AI Features")
                            .font(Font.custom("Impact", size: 36))
                            .foregroundColor(.white)

                        Text("Daily AI Limit: \(dailyRequestCount)/\(dailyLimit)")
                            .foregroundColor(.white)
                            .bold()

                        Button {
                            showQuizSheet = true
                        } label: {
                            featureCard(
                                icon: "list.clipboard",
                                title: "Quiz Generator",
                                description: "Upload notes or select a topic to instantly generate quiz questions at a difficulty of your choice!"
                            )
                        }
                        .sheet(isPresented: $showQuizSheet) {
                            QuizOptionsSheet(
                                selectedImage: $selectedImage,
                                extractedText: $extractedText,
                                selectedInputType: $selectedInputType,
                                selectedDifficulty: $selectedDifficulty,
                                selectedLength: $selectedLength,
                                selectedType: $selectedType,
                                resultText: $resultText,
                                selectedQuestions: $selectedquestions,
                                canMakeRequest: canMakeRequest(),
                                incrementRequest: incrementRequestCount
                            )
                        }

                        Button {
                            showSummarySheet = true
                        } label: {
                            featureCard(
                                icon: "text.alignleft",
                                title: "Summary Generator",
                                description: "Upload notes or paste text here to generate a summary at a length of your choice."
                            )
                        }
                        .sheet(isPresented: $showSummarySheet) {
                            SummaryOptionsSheet(
                                selectedImage: $selectedImage,
                                extractedText: $extractedText,
                                summaryInputType: $summaryInputType,
                                summaryText: $summaryText,
                                selectedSummaryLength: $selectedSummaryLength,
                                resultText: $resultText,
                                canMakeRequest: canMakeRequest(),
                                incrementRequest: incrementRequestCount
                            )
                        }

                        Button {
                            showExplainSheet = true
                        } label: {
                            featureCard(
                                icon: "questionmark.circle",
                                title: "AI Question Explanation",
                                description: "Type in or paste a question to receive an answer and an in-depth explanation!"
                            )
                        }
                        .sheet(isPresented: $showExplainSheet) {
                            ExplainQuestionSheet(
                                questionText: $questionToExplain,
                                resultText: $resultText,
                                canMakeRequest: canMakeRequest(),
                                incrementRequest: incrementRequestCount
                            )
                        }
                    }
                    .sheet(isPresented: $showPaywall) {
                                PaywallView()
                            }
                    .padding()
                }
            }
        }
    }

    @ViewBuilder
    func featureCard(icon: String, title: String, description: String) -> some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .frame(width: UIScreen.main.bounds.width - 100, height: 175)
            .shadow(color: .black.opacity(0.6), radius: 6, x: 0, y: 4)
            .overlay(
                VStack(spacing: 5) {
                    Image(systemName: icon)
                        .foregroundStyle(.black)
                        .font(.system(size: 22))
                    Text(title)
                        .font(Font.custom("Impact", size: 22))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.black)
                    Text(description)
                        .italic()
                        .foregroundStyle(.black)
                }
                .padding()
            )
    }
}


struct QuizOptionsSheet: View {
    @Binding var selectedImage: UIImage?
    @Binding var extractedText: String
    @Binding var selectedInputType: String
    @Binding var selectedDifficulty: String
    @Binding var selectedLength: Int
    @Binding var selectedType: String
    @Binding var resultText: String
    @Binding var selectedQuestions: String
    
    var canMakeRequest: Bool
    var incrementRequest: () -> Void

    @State private var uploadMessage = ""
    @State private var showImagePicker = false
    @State private var isLoading = false

    let openAI = OpenAIService()
    let difficulties = ["Easy", "Medium", "Hard"]
    let lengths = [10, 15, 20]
    let types = ["Both", "Factual", "Conceptual"]
    let questions = ["MCQ", "FRQ", "Both"]

    var isTextTooLong: Bool {
        extractedText.count > maxAllowedCharacters
    }

    @State private var selectedUnit: String = ""
    @State private var selectedTopic: String = ""

    let unitsAndTopics: [String: [String]] = [
        "Chemistry of Life": ["Hydrogen Bonding", "Elements of Life", "Intro to Biological Macromolecules", "Properties of Macromolecules", "Structure & Function of Macromolecules", "Nucleic Acids"],
        "Cell Structure & Function": ["Cell Structure/Subcellular Components", "Cell Structure and Function", "Cell Size", "Plasma Membranes", "Membrane Permeability", "Membrane Transport", "Facilitated Diffusion", "Tonicity and Osmoregulation", "Mechanisms of Transport", "Cell Compartmentalization", "Origins of Cell Compartmentalization"],
        "Cell Energetics": ["Enzyme Structure", "Enzyme Catalysis", "Impacts of Enzyme function", "Cellular Energy", "Photosynthesis", "Cellular Respiration", "Fitness"],
        "Cell Communication and Cell Cycle": ["Cell Communication", "Intro to Signal Transduction", "Signal Transduction", "Changes in ST Pathways", "Feedback", "Cell Cycle", "Mitosis", "Regulation of Cell Cycle"],
        "Heredity": ["Meiosis", "Genetic Diversity", "Mendelian Genetics", "Non-Mendelian Genetics", "Environmental Effects on Phenotype", "Chromosomal Inheritance"],
        "Gene Expression & Regulation": ["DNA & RNA Structure", "Replication", "Transcription & RNA Processing", "Translation", "Regulation of Gene Expression", "Gene Expression and Cell Specialization", "Mutations", "Biotechnology"],
        "Natural Selection": ["Intro to Natural Selection", "Artificial Selection", "Population Genetics", "Hardy-Weinberg Equilibrium", "Evidence for Evolution", "Common Ancestry", "Continuing Evolution", "Phylogeny", "Speciation", "Extinction", "Variations in Populations", "Origins of Life on Earth"],
        "Ecology": ["Responses to the Environment", "Energy Flow Through Ecosystems", "Population Ecology", "Effect of Density of Populations", "Community Ecology", "Biodiversity", "Disruptions to Ecosystems"]
    ]

    var imageIsUploaded: Bool {
        selectedImage != nil
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Quiz Setup").font(.title).bold()

                    Text("Choose Input Type:")
                    HStack {
                        Button("Upload Notes") {
                            selectedInputType = "Image"
                            showImagePicker = true
                        }
                        .disabled(imageIsUploaded)
                        .padding()
                        .background(imageIsUploaded ? Color.gray : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)

                        Button("Select Topic") {
                            selectedInputType = "Topic"
                            selectedImage = nil
                            extractedText = ""
                        }
                        .disabled(imageIsUploaded)
                        .padding()
                        .background(imageIsUploaded ? Color.gray : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    }

                    if imageIsUploaded {
                        HStack(spacing: 8) {
                            Text("Photo uploaded.")
                                .foregroundColor(.green)
                            Button(action: {
                                selectedImage = nil
                                extractedText = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.red)
                            }
                        }
                    }

                    if selectedInputType == "Topic" {
                        VStack(alignment: .leading, spacing: 10) {
                            Picker("Select Unit", selection: $selectedUnit) {
                                Text("Select a Topic").tag("")
                                ForEach(unitsAndTopics.keys.sorted(), id: \.self) { unit in
                                    Text(unit).tag(unit)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())

                            if !selectedUnit.isEmpty {
                                Picker("Select Topic", selection: $selectedTopic) {
                                    Text("Select a Subtopic").tag("")
                                    ForEach(unitsAndTopics[selectedUnit] ?? [], id: \.self) { topic in
                                        Text(topic).tag(topic)
                                    }
                                }
                                .pickerStyle(MenuPickerStyle())
                            }
                        }
                        .onChange(of: selectedTopic) { newValue in
                            if !newValue.isEmpty {
                                extractedText = newValue
                            }
                        }
                    }

                    Picker("Difficulty", selection: $selectedDifficulty) {
                        ForEach(difficulties, id: \.self) { Text($0) }
                    }.pickerStyle(.segmented)

                    Picker("Length", selection: $selectedLength) {
                        ForEach(lengths, id: \.self) { Text("\($0)") }
                    }.pickerStyle(.segmented)

                    Picker("Type of Questions", selection: $selectedType) {
                        ForEach(types, id: \.self) { Text($0) }
                    }.pickerStyle(.segmented)
                    
                    Picker("MCQ/FRQ", selection: $selectedQuestions) {
                        ForEach(questions, id: \.self) { Text($0) }
                    }.pickerStyle(.segmented)

                    if selectedInputType == "Image" && (imageIsUploaded || !extractedText.isEmpty) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Extracted Notes:")
                                .font(.headline)
                                .foregroundColor(.white)

                            TextEditor(text: $extractedText)
                                .padding(10)
                                .frame(height: 150)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                            if !extractedText.isEmpty {
                                Button(action: {
                                    extractedText = ""
                                }) {
                                    Label("Clear Text", systemImage: "trash")
                                        .foregroundColor(.red)
                                }
                                .padding(.top, 5)
                            } else {
                                Text("No text detected")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                        }
                    }

                    if !canMakeRequest {
                        Text("⚠️ You've reached your daily AI limit. Purchase BioLearn+ or BioLearn Pro+ to gain access. ")
                            .foregroundColor(.red)
                            .bold()
                    }

                    Button(action: {
                        isLoading = true
                        incrementRequest()
                        openAI.generateQuiz(
                            from: String(extractedText.prefix(maxAllowedCharacters)),
                            difficulty: selectedDifficulty,
                            length: selectedLength,
                            type: selectedType,
                            question: selectedQuestions
                        ) { response in
                            DispatchQueue.main.async {
                                resultText = response
                                selectedImage = nil
                                isLoading = false
                            }
                        }
                    }) {
                        if isLoading {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                                .frame(maxWidth: .infinity)
                                .padding()
                        } else {
                            Text("Generate Quiz")
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                    }
                    .disabled(isTextTooLong || extractedText.isEmpty || !canMakeRequest || isLoading)
                    .background((isTextTooLong || extractedText.isEmpty || !canMakeRequest || isLoading) ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                    if isTextTooLong {
                        Text("⚠️ Text is too long. Maximum \(maxAllowedCharacters) characters allowed.")
                            .foregroundColor(.red)
                            .font(.caption)
                            .padding(.bottom, 5)
                    }

                    if !resultText.isEmpty {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("AI Response:")
                                .font(.headline)
                                .foregroundColor(.white)

                            Text(resultText)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                        }
                    }
                }
                .padding()
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(selectedImage: $selectedImage) { text in
                    extractedText = text.trimmingCharacters(in: .whitespacesAndNewlines)
                    uploadMessage = extractedText.isEmpty ? "No text detected" : "Photo uploaded."
                }
            }
        }
    }
}

struct SummaryOptionsSheet: View {
    @Binding var selectedImage: UIImage?
    @Binding var extractedText: String
    @Binding var summaryInputType: String
    @Binding var summaryText: String
    @Binding var selectedSummaryLength: String
    @Binding var resultText: String

    var canMakeRequest: Bool
    var incrementRequest: () -> Void

    @State private var uploadMessage = ""
    @State private var showImagePicker = false
    @State private var isLoading = false

    let openAI = OpenAIService()
    let summaryLengths = ["2-3 Sentences", "1 Paragraph", "2 Paragraphs"]

    var isTextTooLong: Bool {
        let input = summaryInputType == "Text" ? summaryText : extractedText
        return input.count > maxAllowedCharacters
    }

    var imageIsUploaded: Bool {
        selectedImage != nil
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Summary Setup").font(.title).bold()

                    HStack {
                        Button("Paste Text") {
                            summaryInputType = "Text"
                        }
                        .disabled(imageIsUploaded)
                        .padding()
                        .background(imageIsUploaded ? Color.gray : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)

                        Button("Upload Notes") {
                            summaryInputType = "Image"
                            showImagePicker = true
                        }
                        .disabled(imageIsUploaded)
                        .padding()
                        .background(imageIsUploaded ? Color.gray : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    }

                    if imageIsUploaded {
                        HStack(spacing: 8) {
                            Text("Photo uploaded.")
                                .foregroundColor(.green)
                            Button(action: {
                                selectedImage = nil
                                extractedText = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.red)
                            }
                        }
                    }

                    if summaryInputType == "Text" {
                        TextEditor(text: $summaryText)
                            .frame(height: 150)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                    }

                    if summaryInputType == "Image" && (imageIsUploaded || !extractedText.isEmpty) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Extracted Notes:")
                                .font(.headline)
                                .foregroundColor(.white)

                            TextEditor(text: $extractedText)
                                .padding(10)
                                .frame(height: 150)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))

                            if !extractedText.isEmpty {
                                Button(action: {
                                    extractedText = ""
                                }) {
                                    Label("Clear Text", systemImage: "trash")
                                        .foregroundColor(.red)
                                }
                                .padding(.top, 5)
                            } else {
                                Text("No text detected")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                        }
                    }

                    Picker("Summary Length", selection: $selectedSummaryLength) {
                        ForEach(summaryLengths, id: \.self) { Text($0) }
                    }.pickerStyle(.segmented)

                    Spacer()

                    if !canMakeRequest {
                        Text("⚠️ You've reached your daily AI limit. Purchase BioLearn+ or BioLearn Pro+ to gain access. ")
                            .foregroundColor(.red)
                            .bold()
                    }

                    Button(action: {
                        isLoading = true
                        incrementRequest()
                        let input = summaryInputType == "Text" ? summaryText : extractedText
                        openAI.summarizeText(String(input.prefix(maxAllowedCharacters)), length: selectedSummaryLength) { response in
                            DispatchQueue.main.async {
                                resultText = response
                                selectedImage = nil
                                isLoading = false
                            }
                        }
                    }) {
                        if isLoading {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                                .frame(maxWidth: .infinity)
                                .padding()
                        } else {
                            Text("Generate Summary")
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                    }
                    .disabled(isTextTooLong || (summaryInputType == "Text" ? summaryText.isEmpty : extractedText.isEmpty) || !canMakeRequest || isLoading)
                    .background(isTextTooLong || !canMakeRequest || isLoading ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                    if isTextTooLong {
                        Text("⚠️ Text is too long. Maximum \(maxAllowedCharacters) characters allowed.")
                            .foregroundColor(.red)
                            .font(.caption)
                            .padding(.bottom, 5)
                    }

                    if !resultText.isEmpty {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("AI Response:")
                                .font(.headline)
                                .foregroundColor(.white)

                            Text(resultText)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                        }
                    }
                }
                .padding()
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(selectedImage: $selectedImage) { text in
                    extractedText = text.trimmingCharacters(in: .whitespacesAndNewlines)
                    uploadMessage = extractedText.isEmpty ? "No text detected" : "Photo uploaded."
                }
            }
        }
    }
}

struct ExplainQuestionSheet: View {
    @Binding var questionText: String
    @Binding var resultText: String

    var canMakeRequest: Bool
    var incrementRequest: () -> Void

    let openAI = OpenAIService()
    @State private var isLoading = false

    var isTextTooLong: Bool {
        questionText.count > maxAllowedCharacters
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("Answer and Explain any Question").font(.title).bold()

                    TextEditor(text: $questionText)
                        .frame(height: 150)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)

                    Spacer()

                    if !canMakeRequest {
                        Text("⚠️  You've reached your daily AI limit. Purchase BioLearn+ or BioLearn Pro+ to gain access.")
                            .foregroundColor(.red)
                            .bold()
                    }

                    Button(action: {
                        isLoading = true
                        incrementRequest()
                        openAI.explainQuestion(String(questionText.prefix(maxAllowedCharacters))) { response in
                            DispatchQueue.main.async {
                                resultText = response
                                isLoading = false
                            }
                        }
                    }) {
                        if isLoading {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                                .frame(maxWidth: .infinity)
                                .padding()
                        } else {
                            Text("Explain")
                                .frame(maxWidth: .infinity)
                                .padding()
                        }
                    }
                    .disabled(isTextTooLong || questionText.isEmpty || !canMakeRequest || isLoading)
                    .background((isTextTooLong || questionText.isEmpty || !canMakeRequest || isLoading) ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

                    if isTextTooLong {
                        Text("⚠️ Question is too long. Maximum \(maxAllowedCharacters) characters allowed.")
                            .foregroundColor(.red)
                            .font(.caption)
                            .padding(.bottom, 5)
                    }

                    if !resultText.isEmpty {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("AI Response:")
                                .font(.headline)
                                .foregroundColor(.white)

                            Text(resultText)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                        }
                    }
                }
                .padding()
            }
        }
    }
}

