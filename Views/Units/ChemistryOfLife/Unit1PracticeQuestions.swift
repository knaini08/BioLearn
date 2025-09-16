//
//  Unit1PracticeQuestions.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/25/25.
//
import SwiftUI
import Foundation

struct UnitPracticeQuestions: View {
    let unit: Int
    @Environment(\.colorScheme) var colorScheme
    @State private var selectedAnswer: String? = nil
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = []
    @State private var currentIndex: Int
    @State private var answeredQuestions: [PracticeQuestion]
    @State private var correctAnswers: Int
    @State private var numberOfQuestionsAnswered: Int
    @State private var shuffledQuestions: [PracticeQuestion] = []
    @State private var allTotalQuestionsAnswered: Int
    @State private var allTotalQuestionsCorrect: Int
    @State private var AcorrectAnswers: Int
    @State private var AnumberOfQuestionsAnswered: Int
    
    init(unit: Int) {
        self.unit = unit
        _currentIndex = State(initialValue: UserDefaults.standard.integer(forKey: "currentIndex_\(unit)"))
        _answeredQuestions = State(initialValue: UserDefaults.standard.loadQuestions(forKey: "answeredQuestions_\(unit)"))
        _correctAnswers = State(initialValue: UserDefaults.standard.integer(forKey: "correctAnswers_\(unit)"))
        _numberOfQuestionsAnswered = State(initialValue: UserDefaults.standard.integer(forKey: "questionsAnswered_\(unit)"))
        _AcorrectAnswers = State(initialValue: UserDefaults.standard.integer(forKey: "AcorrectAnswers_\(unit)"))
        _AnumberOfQuestionsAnswered = State(initialValue: UserDefaults.standard.integer(forKey: "AquestionsAnswered_\(unit)"))
      
        _allTotalQuestionsAnswered = State(initialValue: UserDefaults.standard.integer(forKey: "allTotalQuestionsAnswered"))
        _allTotalQuestionsCorrect = State(initialValue: UserDefaults.standard.integer(forKey: "allTotalQuestionsCorrect"))
        _selectedTopics = State(initialValue: Set(topicsForUnit))

        
    }

    var topicsForUnit: [String] {
        switch unit {
        case 1:
            return (1...6).map { "1.\($0)" }
        case 2:
            return (1...11).map { "2.\($0)" }
        case 3:
            return (1...8).map { "3.\($0)" }
        case 4:
            return (1...10).map { "4.\($0)" }
        case 5:
            return (1...6).map { "5.\($0)" }
        case 6:
            return (1...8).map { "6.\($0)" }
        case 7:
            return (1...13).map { "7.\($0)" }
        case 8:
            return (1...7).map { "8.\($0)" }
        case 9:
            return (1...2).map { "9.\($0)" }
        case 10:
            return ["10.1"]
        default:
            return []
        }
    }

    var filteredQuestions: [PracticeQuestion] {
        let questions = shuffledQuestions.isEmpty
            ? allPracticeQuestions.filter { $0.unit == unit && selectedTopics.contains($0.topic) && !answeredQuestions.contains($0) }
            : shuffledQuestions.filter { selectedTopics.contains($0.topic) && !answeredQuestions.contains($0) }
        return questions
    }
    private func shuffleQuestions() {
        let questions = allPracticeQuestions.filter { $0.unit == unit && selectedTopics.contains($0.topic) && !answeredQuestions.contains($0) }
        shuffledQuestions = questions.shuffled()
        currentIndex = 0
    }

    var body: some View {
      

        ZStack {
            backgroundView
            VStack {
                topicSelection
                questionCounterAndReset
                if isExplanationVisible == true {
                    ScrollView {
                        questionAndOptions
                        explanationView
                    }
                }
                else {
                    ScrollView {
                        questionAndOptions
                        explanationView
                    }
                }
                Spacer()
            }
            .padding()
            .onAppear(perform: {
                loadProgress()
            })
            .onDisappear(perform: {
                saveProgress()
            })
        }
    }

    private var backgroundView: some View {
        Color(red: 0.12, green: 0.24, blue: 0.18)
            .ignoresSafeArea()
    }

    private var topicSelection: some View {
        VStack {
            Text("Scroll to Deselect Topics")
                .foregroundStyle(Color.accentColor)
                .multilineTextAlignment(.center)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(topicsForUnit, id: \.self) { topic in
                        topicCircle(topic)
                    }
                }
            }
        }
    }

    private func topicCircle(_ topic: String) -> some View {
        Circle()
            .fill(selectedTopics.contains(topic) ? Color.accentColor : Color.gray.opacity(0.5))
            .frame(width: 50, height: 50)
            .overlay(
                Text(topic)
                    .foregroundColor(.black)
                    .font(.caption)
            )
            .onTapGesture {
                toggleTopicSelection(topic)
            }
    }

    private func toggleTopicSelection(_ topic: String) {
        if selectedTopics.contains(topic) {
            selectedTopics.remove(topic)
        } else {
            selectedTopics.insert(topic)
        }
    }

    private var questionCounterAndReset: some View {
        HStack {
            Text("\(correctAnswers)/\(numberOfQuestionsAnswered) (\(numberOfQuestionsAnswered == 0 ? 0 : Int(Double(correctAnswers) / Double(numberOfQuestionsAnswered) * 100))%)")
                .font(.system(size: 14))
                .foregroundColor(.accentColor)
                .bold()

            Spacer()
            shuffleButton
            resetButton
            nextButton
        }
        .padding()
    }

    private var resetButton: some View {
        Button(action: resetProgress) {
            Text("Reset")
                .padding()
                .background(Color.gray.opacity(0.3))
                .foregroundStyle(Color.white)
                .cornerRadius(8)
        }
    }

   

        private var shuffleButton: some View {
            Button(action: {
                if selectedAnswer == nil {
                    shuffleQuestions()
                }
            }) {
                Image(systemName: "shuffle")
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .foregroundStyle(Color.white)
                    .cornerRadius(8)
            }
        }
    private var nextButton: some View {
        Button(action: {
            moveToNextQuestion()
            saveProgress()
        }) {
            Text(selectedAnswer != nil ? "Next" : "Skip")
                .padding()
                .frame(width: 68)
                .background(selectedAnswer != nil ? Color.blue : Color.gray.opacity(0.5))
                .cornerRadius(10)
                .foregroundColor(.white)
        }
    }

    private func moveToNextQuestion() {
        // Ensure that currentIndex is within bounds
        guard currentIndex < filteredQuestions.count else {
            return
        }
        let currentQuestion = filteredQuestions[currentIndex]
        answeredQuestions.append(currentQuestion)
        if let nextIndex = filteredQuestions.firstIndex(where: { !answeredQuestions.contains($0) }) {
            currentIndex = nextIndex
        } else {
            currentIndex = 0
        }

        selectedAnswer = nil
        isExplanationVisible = false
    }


    private var questionAndOptions: some View {
        
        Group {
            
            
            if !filteredQuestions.isEmpty {
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(filteredQuestions[currentIndex].question + " (" + filteredQuestions[currentIndex].topic + ")")
                        .font(.system(size: 18))
                        .fontWeight(.bold)

                    ForEach(filteredQuestions[currentIndex].options, id: \.self) { option in
                        optionButton(option)
                    }
                }
                .padding()
            } else {
                noQuestionsAvailableMessage
            }
        }
    }

    private func optionButton(_ option: String) -> some View {
        Button(action: {
            handleAnswerSelection(option)
            saveProgress()
        }) {
            HStack {
                Text(option)
                    .font(.body)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        selectedAnswer == option
                            ? (option == filteredQuestions[currentIndex].correctAnswer
                                ? Color.green.opacity(0.7)
                                : Color.red.opacity(0.7))
                            : (isExplanationVisible && option == filteredQuestions[currentIndex].correctAnswer
                                ? Color.green.opacity(0.7)
                                : Color.gray.opacity(0.2))
                    )
                    .cornerRadius(10)
                    .foregroundStyle(Color.white)
            }
        }
        .disabled(selectedAnswer != nil)
    }

    private func handleAnswerSelection(_ option: String) {
        if selectedAnswer == nil {
            selectedAnswer = option
            if option == filteredQuestions[currentIndex].correctAnswer {
                correctAnswers += 1
                allTotalQuestionsCorrect += 1
                AcorrectAnswers += 1
            }
            numberOfQuestionsAnswered += 1
            allTotalQuestionsAnswered += 1
            AnumberOfQuestionsAnswered += 1
            saveProgress()

            if option != filteredQuestions[currentIndex].correctAnswer {
                isExplanationVisible = true
            }
        }
    }

    private var explanationView: some View {
        Group {
            if isExplanationVisible {
                Text(filteredQuestions[currentIndex].explanation)
                    .font(.body)
                    .foregroundColor(.primary)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.top)
            }
        }
    }

    private var noQuestionsAvailableMessage: some View {
        VStack {
            Text("No questions available for the selected topics.")
                .font(.headline)
                .foregroundColor(.gray)
                .padding()

            resetButton
        }
    }

    private func saveProgress() {
        UserDefaults.standard.saveQuestions(answeredQuestions, forKey: "answeredQuestions_\(unit)")
        UserDefaults.standard.set(correctAnswers, forKey: "correctAnswers_\(unit)")
        UserDefaults.standard.set(numberOfQuestionsAnswered, forKey: "questionsAnswered_\(unit)")
        UserDefaults.standard.set(currentIndex, forKey: "currentIndex_\(unit)")
        UserDefaults.standard.set(allTotalQuestionsAnswered, forKey: "allTotalQuestionsAnswered")
        UserDefaults.standard.set(allTotalQuestionsCorrect, forKey: "allTotalQuestionsCorrect")
        UserDefaults.standard.set(AcorrectAnswers, forKey: "AcorrectAnswers_\(unit)")
        UserDefaults.standard.set(AnumberOfQuestionsAnswered, forKey: "AquestionsAnswered_\(unit)")
        
        print("Saved answeredQuestions: \(answeredQuestions.count)")
        print("current index is \(currentIndex)")
    }


    private func resetProgress() {
        currentIndex = 0
        selectedAnswer = nil
        isExplanationVisible = false
        answeredQuestions = []
        correctAnswers = 0
        numberOfQuestionsAnswered = 0
        selectedTopics = Set(topicsForUnit)
        saveProgress()
        
        shuffledQuestions = []
    }
    private func loadProgress() {
        currentIndex = UserDefaults.standard.integer(forKey: "currentIndex_\(unit)")
        answeredQuestions = UserDefaults.standard.loadQuestions(forKey: "answeredQuestions_\(unit)")
        correctAnswers = UserDefaults.standard.integer(forKey: "correctAnswers_\(unit)")
        numberOfQuestionsAnswered = UserDefaults.standard.integer(forKey: "questionsAnswered_\(unit)")
        allTotalQuestionsAnswered = UserDefaults.standard.integer(forKey: "allTotalQuestionsAnswered")
        allTotalQuestionsCorrect = UserDefaults.standard.integer(forKey: "allTotalQuestionsCorrect")
        AcorrectAnswers = UserDefaults.standard.integer(forKey: "AcorrectAnswers_\(unit)")
        AnumberOfQuestionsAnswered = UserDefaults.standard.integer(forKey: "AquestionsAnswered_\(unit)")
        
        print("Loaded answeredQuestions: \(answeredQuestions.count)")
        
        
     
    }
    


}

extension UserDefaults {
    func saveQuestions(_ questions: [PracticeQuestion], forKey key: String) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(questions) {
            set(encoded, forKey: key)
        }
    }

    func loadQuestions(forKey key: String) -> [PracticeQuestion] {
        if let savedData = data(forKey: key) {
            let decoder = JSONDecoder()
            if let loadedQuestions = try? decoder.decode([PracticeQuestion].self, from: savedData) {
                return loadedQuestions
            }
        }
        return []
    }
}

#Preview {
    UnitPracticeQuestions(unit: 2)
}
