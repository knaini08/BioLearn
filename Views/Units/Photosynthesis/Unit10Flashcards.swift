//
//  Unit10Flashcards.swift
//  BioTutor
//
//  Created by Kaveh Naini on 3/1/25.
//

import SwiftUI

struct Unit10Flashcards: View {
    let allFlashcards: [flashcard10] = [
        flashcard10(
            question: "Purpose of cellular respiration",
            answer: "To produce ATP",
            explanation: "Cellular respiration breaks down glucose and other molecules to produce ATP, the energy currency of the cell.",
            topic: "10.1"
        ),

        flashcard10(
            question: "First step of cellular respiration",
            answer: "Glycolysis",
            explanation: "Glycolysis is the initial step where glucose is broken down into pyruvate, producing ATP and NADH.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Where does glycolysis occur?",
            answer: "Cytoplasm",
            explanation: "Glycolysis takes place in the cytoplasm and does not require oxygen.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Products of glycolysis",
            answer: "2 pyruvate, 2 ATP, 2 NADH",
            explanation: "Glycolysis produces two molecules of pyruvate, a net gain of two ATP, and two NADH molecules.",
            topic: "10.1"
        ),

        flashcard10(
            question: "What happens to pyruvate in the presence of oxygen?",
            answer: "Enters mitochondria",
            explanation: "Pyruvate moves into the mitochondria where it undergoes further breakdown in the citric acid cycle.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Role of NADH",
            answer: "Electron carrier",
            explanation: "NADH carries high-energy electrons to the electron transport chain for ATP production.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Citric acid cycle alternate name",
            answer: "Krebs cycle",
            explanation: "The citric acid cycle is also known as the Krebs cycle, and it plays a key role in generating electron carriers.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Location of citric acid cycle",
            answer: "Mitochondrial matrix",
            explanation: "The citric acid cycle takes place in the mitochondrial matrix, where acetyl-CoA is oxidized.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Final electron acceptor",
            answer: "Oxygen",
            explanation: "Oxygen is the final electron acceptor in the electron transport chain, forming water as a byproduct.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Role of ATP synthase",
            answer: "Produces ATP",
            explanation: "ATP synthase uses the proton gradient to produce ATP from ADP and inorganic phosphate during oxidative phosphorylation.",
            topic: "10.1"
        ),

        flashcard10(
            question: "ATP produced by electron transport chain",
            answer: "34 ATP",
            explanation: "The electron transport chain and oxidative phosphorylation produce about 34 ATP per glucose molecule.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Total ATP from one glucose molecule",
            answer: "38 ATP",
            explanation: "One glucose molecule produces a total of about 38 ATP after complete cellular respiration.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Fermentation products without oxygen",
            answer: "Lactic acid or ethanol and CO2",
            explanation: "In the absence of oxygen, fermentation produces lactic acid (in animals) or ethanol and CO2 (in yeast).",
            topic: "10.1"
        ),

        flashcard10(
            question: "Main function of fermentation",
            answer: "Regenerate NAD+",
            explanation: "Fermentation regenerates NAD+ to allow glycolysis to continue producing ATP in the absence of oxygen.",
            topic: "10.1"
        ),
        flashcard10(
            question: "Glycolysis product",
            answer: "Pyruvate",
            explanation: "Glycolysis breaks down glucose into two molecules of pyruvate.",
            topic: "10.1"
        ),

        flashcard10(
            question: "ATP yield in glycolysis",
            answer: "2 ATP",
            explanation: "Glycolysis produces a net gain of 2 ATP molecules.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Where does the citric acid cycle occur?",
            answer: "Mitochondrial matrix",
            explanation: "The citric acid cycle takes place in the mitochondrial matrix, where acetyl-CoA is processed.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Electron transport chain location",
            answer: "Inner mitochondrial membrane",
            explanation: "The electron transport chain occurs in the inner mitochondrial membrane where electrons are passed through protein complexes.",
            topic: "10.1"
        ),

        flashcard10(
            question: "NADH role in electron transport chain",
            answer: "Electron donor",
            explanation: "NADH donates electrons to the electron transport chain, which are transferred through protein complexes to generate ATP.",
            topic: "10.1"
        ),

        flashcard10(
            question: "FADH2 role in electron transport chain",
            answer: "Electron donor",
            explanation: "FADH2 donates electrons to the electron transport chain at a later point than NADH, contributing to ATP synthesis.",
            topic: "10.1"
        ),

        flashcard10(
            question: "What is oxidized in the electron transport chain?",
            answer: "NADH and FADH2",
            explanation: "NADH and FADH2 are oxidized by donating their electrons to the electron transport chain.",
            topic: "10.1"
        ),

        flashcard10(
            question: "ATP production during oxidative phosphorylation",
            answer: "34 ATP",
            explanation: "Oxidative phosphorylation, which includes the electron transport chain and chemiosmosis, produces around 34 ATP molecules.",
            topic: "10.1"
        ),

        flashcard10(
            question: "What is chemiosmosis?",
            answer: "Proton gradient-driven ATP synthesis",
            explanation: "Chemiosmosis is the process of ATP synthesis driven by the flow of protons across the inner mitochondrial membrane.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Total ATP produced per glucose in cellular respiration",
            answer: "38 ATP",
            explanation: "The complete breakdown of one glucose molecule produces approximately 38 ATP through glycolysis, the citric acid cycle, and oxidative phosphorylation.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Lactic acid fermentation product",
            answer: "Lactic acid",
            explanation: "Lactic acid fermentation produces lactic acid in animals when oxygen is unavailable.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Alcoholic fermentation product",
            answer: "Ethanol and CO2",
            explanation: "Alcoholic fermentation produces ethanol and carbon dioxide in yeast and some other microorganisms.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Oxygen role in cellular respiration",
            answer: "Final electron acceptor",
            explanation: "Oxygen accepts electrons at the end of the electron transport chain, forming water and allowing the process to continue.",
            topic: "10.1"
        ),

        flashcard10(
            question: "What does the citric acid cycle begin with?",
            answer: "Acetyl-CoA",
            explanation: "The citric acid cycle begins with the combination of acetyl-CoA and oxaloacetate to form citric acid.",
            topic: "10.1"
        ),

        flashcard10(
            question: "How many CO2 molecules are produced in one turn of the citric acid cycle?",
            answer: "2 CO2",
            explanation: "Each turn of the citric acid cycle releases 2 CO2 molecules as waste products.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Glycolysis energy investment",
            answer: "2 ATP",
            explanation: "Glycolysis requires an initial investment of 2 ATP to break down glucose into pyruvate.",
            topic: "10.1"
        ),

        flashcard10(
            question: "ATP produced in citric acid cycle",
            answer: "2 ATP",
            explanation: "Each turn of the citric acid cycle produces 2 ATP through substrate-level phosphorylation.",
            topic: "10.1"
        ),

        flashcard10(
            question: "What molecule is regenerated in the citric acid cycle?",
            answer: "Oxaloacetate",
            explanation: "Oxaloacetate is regenerated in the citric acid cycle and combines with acetyl-CoA to start another cycle.",
            topic: "10.1"
        ),

        flashcard10(
            question: "How many ATP molecules are produced by fermentation?",
            answer: "2 ATP",
            explanation: "Fermentation produces only 2 ATP molecules per glucose molecule because it relies solely on glycolysis.",
            topic: "10.1"
        ),

        flashcard10(
            question: "Pyruvate to acetyl-CoA step",
            answer: "Pyruvate decarboxylation",
            explanation: "Before entering the citric acid cycle, pyruvate undergoes decarboxylation to form acetyl-CoA and release CO2.",
            topic: "10.1"
        ),

        flashcard10(
            question: "NADH yield from one glucose molecule",
            answer: "10 NADH",
            explanation: "Each glucose molecule produces 10 NADH molecules during glycolysis, the citric acid cycle, and pyruvate decarboxylation.",
            topic: "10.1"
        ),

        flashcard10(
            question: "FADH2 yield from one glucose molecule",
            answer: "2 FADH2",
            explanation: "Each glucose molecule produces 2 FADH2 molecules during the citric acid cycle.",
            topic: "10.1"
        ),



    ]
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["10.1"]
    
    var filteredFlashcards: [flashcard10] {
        allFlashcards.filter { selectedTopics.contains($0.topic) }
    }
    
    var body: some View {
    

        ZStack {
            Color(red: 0.12, green: 0.24, blue: 0.18)
                .ignoresSafeArea()
            
            VStack {
                // Topic Selection Circles
                    Text("Scroll to Deselect Topics")
                    .foregroundStyle(Color.accentColor)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(["10.1"], id: \.self) { topic in
                            Circle()
                                .fill(selectedTopics.contains(topic) ? Color.accentColor : Color.gray.opacity(0.5))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Text(topic)
                                        .foregroundColor(.black)                                        .font(.caption)
                                )
                                .onTapGesture {
                                    if selectedTopics.contains(topic) {
                                        selectedTopics.remove(topic)
                                    } else {
                                        selectedTopics.insert(topic)
                                    }
                                    // Reset flashcard index when topics change
                                    currentIndex = 0
                                }
                        }
                    }
                    .padding()
                }
                
                // Counter: Shows current question number
                Spacer()
                if !filteredFlashcards.isEmpty {
                    Text("\(currentIndex + 1)/\(filteredFlashcards.count)")
                        .font(.headline)
                        .padding()
                        .foregroundStyle(Color.accentColor)
                    
                    // Flashcard View
                    ZStack {
                        if isFlipped {
                            Text(filteredFlashcards[currentIndex].answer)
                                .font(.title)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 300, height: 200)
                                .background(Color.accentColor)
                                .cornerRadius(10)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                        } else {
                            Text(filteredFlashcards[currentIndex].question)
                                .font(.title)
                                .foregroundColor(.black)
                                .padding()
                                .frame(width: 300, height: 200)
                                .background(Color.accentColor)
                                .cornerRadius(10)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                        }
                    }
                    
                    .onTapGesture {
                        withAnimation {
                            isFlipped.toggle()
                        }
                    }
                   
                    
                    // Explanation Button and Text
                    if isExplanationVisible {
                        ScrollView {
                            Text(filteredFlashcards[currentIndex].explanation)
                                .font(.body)
                                .foregroundColor(.primary)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .padding(.top)
                        }
                        Button("Hide Explanation") {
                            withAnimation {
                                isExplanationVisible = false
                            }
                        }
                        .padding(.top, 10)
                    } else {
                        Button("Show Explanation") {
                            withAnimation {
                                isExplanationVisible = true
                            }
                        }
                        .padding(.top)
                    }
                    Spacer()
                    Spacer()
                    
                    // Navigation Buttons
                    HStack {
                        Button(action: {
                            if currentIndex > 0 {
                                currentIndex -= 1
                                isFlipped = false
                                isExplanationVisible = false
                            }
                        }) {
                            Text("Back")
                                .padding()
                                .frame(width: 100)
                                .background(currentIndex > 0 ? Color.gray : Color.gray.opacity(0.5))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                        }
                        .disabled(currentIndex == 0)
                        
                        Spacer()
                        
                        Button(action: {
                            if currentIndex < filteredFlashcards.count - 1 {
                                currentIndex += 1
                                isFlipped = false
                                isExplanationVisible = false
                            }
                        }) {
                            Text("Next")
                                .padding()
                                .frame(width: 100)
                                .background(currentIndex < filteredFlashcards.count - 1 ? Color.gray : Color.gray.opacity(0.5))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                        }
                        .disabled(currentIndex == filteredFlashcards.count - 1)
                    }
                    .padding(.horizontal)
                } else {
                    Text("No flashcards available for the selected topics.")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .padding()
                    Spacer()
                }
            }
            .padding()
        }
    }
}

struct flashcard10: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit10Flashcards()
}
