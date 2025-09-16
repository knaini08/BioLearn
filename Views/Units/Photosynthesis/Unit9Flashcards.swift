
import SwiftUI

struct Unit9Flashcards: View {
    let allFlashcards: [flashcard9] = [
        flashcard9(
            question: "Light reactions location",
            answer: "Thylakoid membranes",
            explanation: "The light reactions occur in the thylakoid membranes of the chloroplast where light energy is captured.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Purpose of light reactions",
            answer: "Produce ATP and NADPH",
            explanation: "ATP and NADPH generated in the light reactions provide energy and electrons for the Calvin cycle.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Water splitting enzyme",
            answer: "Photosystem II",
            explanation: "Photosystem II splits water molecules, releasing oxygen, protons, and electrons.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Electron transport chain function",
            answer: "Creates proton gradient",
            explanation: "The ETC moves electrons and pumps protons into the thylakoid lumen to drive ATP synthesis.",
            topic: "9.1"
        ),

        flashcard9(
            question: "ATP synthesis process",
            answer: "Chemiosmosis",
            explanation: "ATP is produced as protons flow back into the stroma through ATP synthase.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Final electron acceptor",
            answer: "NADP⁺",
            explanation: "Electrons from Photosystem I reduce NADP⁺ to form NADPH, used in the Calvin cycle.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Photosystem I function",
            answer: "Re-energizes electrons",
            explanation: "Photosystem I absorbs light to boost electron energy before passing them to NADP⁺.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Photophosphorylation types",
            answer: "Non-cyclic and cyclic",
            explanation: "Non-cyclic produces ATP, NADPH, and O₂, while cyclic produces only ATP.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Oxygen source in photosynthesis",
            answer: "Water (H₂O)",
            explanation: "Water is split in Photosystem II, releasing oxygen as a byproduct.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Light reactions products",
            answer: "ATP, NADPH, O₂",
            explanation: "ATP and NADPH power the Calvin cycle, and O₂ is released as waste.",
            topic: "9.1"
        ),
        flashcard9(
            question: "Primary pigment in light reactions",
            answer: "Chlorophyll a",
            explanation: "Chlorophyll a absorbs light energy, initiating electron excitation in Photosystem II.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Accessory pigments",
            answer: "Chlorophyll b and carotenoids",
            explanation: "These pigments absorb additional wavelengths of light and transfer energy to chlorophyll a.",
            topic: "9.1"
        ),

        flashcard9(
            question: "First step of light reactions",
            answer: "Photon absorption by Photosystem II",
            explanation: "A photon excites electrons in chlorophyll, which are passed to the electron transport chain.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Protein complex that pumps protons",
            answer: "Cytochrome complex",
            explanation: "This complex uses electron energy to pump protons into the thylakoid lumen, creating a gradient.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Proton gradient function",
            answer: "Drives ATP synthesis",
            explanation: "The proton gradient provides energy for ATP synthase to convert ADP and Pi into ATP.",
            topic: "9.1"
        ),

        flashcard9(
            question: "ATP-producing enzyme",
            answer: "ATP synthase",
            explanation: "ATP synthase uses the proton gradient to catalyze ATP formation.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Electron replacement for Photosystem II",
            answer: "Electrons from water",
            explanation: "Water splitting replenishes lost electrons in Photosystem II.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Electron replacement for Photosystem I",
            answer: "Electrons from Photosystem II",
            explanation: "Electrons from the electron transport chain re-energize in Photosystem I.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Why does cyclic photophosphorylation occur?",
            answer: "To produce extra ATP",
            explanation: "Cyclic photophosphorylation allows ATP production without NADPH formation when more ATP is needed.",
            topic: "9.1"
        ),

        flashcard9(
            question: "How many water molecules are split to release one oxygen molecule?",
            answer: "Two H₂O molecules",
            explanation: "Splitting two water molecules produces four electrons, four protons, and one O₂ molecule.",
            topic: "9.1"
        ),

        flashcard9(
            question: "What happens to NADPH after light reactions?",
            answer: "Used in the Calvin cycle",
            explanation: "NADPH provides high-energy electrons for carbon fixation in the Calvin cycle.",
            topic: "9.1"
        ),

        flashcard9(
            question: "What wavelengths of light are best absorbed by chlorophyll?",
            answer: "Red and blue",
            explanation: "Chlorophyll absorbs red and blue light effectively but reflects green light.",
            topic: "9.1"
        ),

        flashcard9(
            question: "What happens to ATP after light reactions?",
            answer: "Used in the Calvin cycle",
            explanation: "ATP provides the energy required for carbon fixation and sugar synthesis.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Overall equation of light reactions",
            answer: "H₂O + light -> ATP + NADPH + O₂",
            explanation: "Water is split, producing oxygen, while ATP and NADPH are synthesized for the Calvin cycle.",
            topic: "9.1"
        ),

        flashcard9(
            question: "Does the light reaction occur in the dark?",
            answer: "No",
            explanation: "Light reactions require light energy to excite electrons in Photosystem II.",
            topic: "9.1"
        ),
        flashcard9(
            question: "Where does the Calvin cycle occur?",
            answer: "Stroma of the chloroplast",
            explanation: "The Calvin cycle occurs in the stroma, the fluid-filled area outside the thylakoid membranes.",
            topic: "9.2"
        ),

        flashcard9(
            question: "Main purpose of the Calvin cycle",
            answer: "Produce glucose",
            explanation: "The Calvin cycle uses ATP and NADPH to convert carbon dioxide into glucose.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What molecule is fixed in the Calvin cycle?",
            answer: "Carbon dioxide (CO₂)",
            explanation: "In the first step of the Calvin cycle, carbon dioxide is fixed into an organic molecule by Rubisco.",
            topic: "9.2"
        ),

        flashcard9(
            question: "First step of the Calvin cycle",
            answer: "Carbon fixation",
            explanation: "Carbon fixation involves attaching carbon dioxide to RuBP (ribulose bisphosphate), catalyzed by the enzyme Rubisco.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What is RuBP?",
            answer: "Ribulose bisphosphate",
            explanation: "RuBP is a 5-carbon molecule that combines with carbon dioxide in the first step of the Calvin cycle.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What enzyme catalyzes carbon fixation?",
            answer: "Rubisco",
            explanation: "Rubisco is the enzyme that catalyzes the reaction between carbon dioxide and RuBP.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What is formed after carbon fixation?",
            answer: "3-PGA (3-phosphoglycerate)",
            explanation: "The combination of CO₂ and RuBP produces two molecules of 3-PGA, a 3-carbon compound.",
            topic: "9.2"
        ),

        flashcard9(
            question: "Second step of the Calvin cycle",
            answer: "Reduction",
            explanation: "3-PGA is reduced using ATP and NADPH to form G3P (glyceraldehyde-3-phosphate).",
            topic: "9.2"
        ),

        flashcard9(
            question: "What is G3P?",
            answer: "Glyceraldehyde-3-phosphate",
            explanation: "G3P is a 3-carbon sugar that can be used to form glucose or other carbohydrates.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What molecules are used in the reduction step?",
            answer: "ATP and NADPH",
            explanation: "ATP and NADPH from the light reactions provide the energy and electrons for reducing 3-PGA to G3P.",
            topic: "9.2"
        ),

        flashcard9(
            question: "Third step of the Calvin cycle",
            answer: "Regeneration",
            explanation: "G3P is used to regenerate RuBP, which allows the cycle to continue, using more ATP in the process.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What molecule is regenerated in the Calvin cycle?",
            answer: "RuBP (ribulose bisphosphate)",
            explanation: "RuBP is regenerated from G3P in the final step of the Calvin cycle, using ATP.",
            topic: "9.2"
        ),

        flashcard9(
            question: "How many ATP are used per cycle?",
            answer: "3 ATP",
            explanation: "Three ATP are used to regenerate RuBP in the Calvin cycle, which completes one full cycle.",
            topic: "9.2"
        ),

        flashcard9(
            question: "How many NADPH are used per cycle?",
            answer: "2 NADPH",
            explanation: "Two NADPH molecules are used in the reduction phase of the Calvin cycle to reduce 3-PGA to G3P.",
            topic: "9.2"
        ),

        flashcard9(
            question: "How many molecules of G3P are produced in one cycle?",
            answer: "One G3P",
            explanation: "Each cycle of the Calvin cycle produces one molecule of G3P, which can be used to form glucose and other sugars.",
            topic: "9.2"
        ),
        
        flashcard9(
            question: "How many cycles are needed to form one glucose molecule?",
            answer: "Six cycles",
            explanation: "Six cycles of the Calvin cycle are needed to form one glucose molecule, since each cycle produces one G3P, and two G3P are required to make glucose.",
            topic: "9.2"
        ),

        flashcard9(
            question: "Calvin cycle byproduct",
            answer: "G3P",
            explanation: "G3P is the byproduct of the Calvin cycle, which can be used to form glucose or other organic compounds.",
            topic: "9.2"
        ),
        flashcard9(
            question: "What does the Calvin cycle require from light reactions?",
            answer: "ATP and NADPH",
            explanation: "The Calvin cycle uses ATP and NADPH produced in the light reactions to convert carbon dioxide into glucose.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What happens to G3P after the Calvin cycle?",
            answer: "It can be used to form glucose and other sugars",
            explanation: "G3P is the precursor for glucose, fructose, and other carbohydrates essential for plant growth.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What is the role of Rubisco in the Calvin cycle?",
            answer: "Catalyzes carbon fixation",
            explanation: "Rubisco is the enzyme responsible for attaching carbon dioxide to RuBP, beginning the Calvin cycle process.",
            topic: "9.2"
        ),

        flashcard9(
            question: "How many carbons are in RuBP?",
            answer: "Five carbons",
            explanation: "RuBP is a 5-carbon molecule that reacts with carbon dioxide during carbon fixation in the Calvin cycle.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What is the end product of the Calvin cycle?",
            answer: "Glucose (C₆H₁₂O₆)",
            explanation: "After several turns of the Calvin cycle, G3P molecules are used to form glucose and other carbohydrates.",
            topic: "9.2"
        ),

        flashcard9(
            question: "How many CO₂ molecules are fixed to produce one glucose molecule?",
            answer: "Six CO₂ molecules",
            explanation: "To form one glucose molecule, six molecules of carbon dioxide must be fixed through the Calvin cycle.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What is the relationship between the Calvin cycle and photosynthesis?",
            answer: "The Calvin cycle is the 'synthesis' part of photosynthesis",
            explanation: "While light reactions convert light energy to chemical energy, the Calvin cycle uses this energy to synthesize glucose from carbon dioxide.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What happens to RuBP after it reacts with CO₂?",
            answer: "It forms an unstable 6-carbon compound",
            explanation: "When RuBP reacts with CO₂, it forms a 6-carbon compound that immediately splits into two 3-carbon molecules of 3-PGA.",
            topic: "9.2"
        ),

        flashcard9(
            question: "Which compound is produced during the reduction phase of the Calvin cycle?",
            answer: "G3P (Glyceraldehyde-3-phosphate)",
            explanation: "During the reduction phase, ATP and NADPH convert 3-PGA into G3P, a 3-carbon sugar.",
            topic: "9.2"
        ),

        flashcard9(
            question: "How many molecules of G3P are required to form one glucose molecule?",
            answer: "Two G3P",
            explanation: "Two molecules of G3P are needed to form one molecule of glucose in the Calvin cycle.",
            topic: "9.2"
        ),

        flashcard9(
            question: "How many molecules of ATP are used in the regeneration phase of the Calvin cycle?",
            answer: "Three ATP",
            explanation: "Three molecules of ATP are consumed during the regeneration phase to reform RuBP, allowing the cycle to continue.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What is the carbon source for the Calvin cycle?",
            answer: "Carbon dioxide (CO₂)",
            explanation: "Carbon dioxide from the atmosphere is fixed into organic molecules in the Calvin cycle.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What is the importance of the Calvin cycle in plants?",
            answer: "It produces glucose for energy and growth",
            explanation: "The Calvin cycle is crucial for generating glucose, which provides energy for cellular processes and supports plant growth.",
            topic: "9.2"
        ),

        flashcard9(
            question: "What is the role of NADPH in the Calvin cycle?",
            answer: "Provides electrons for reduction",
            explanation: "NADPH donates electrons during the reduction phase, allowing 3-PGA to be converted into G3P.",
            topic: "9.2"
        ),

        flashcard9(
            question: "How many turns of the Calvin cycle are needed to produce one glucose molecule?",
            answer: "Six turns",
            explanation: "Six turns of the Calvin cycle are needed to produce one glucose molecule, as each cycle produces one G3P and two G3P are required for glucose formation.",
            topic: "9.2"
        )


    ]
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["9.1", "9.2"]
    
    var filteredFlashcards: [flashcard9] {
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
                        ForEach(["9.1", "9.2"], id: \.self) { topic in
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

struct flashcard9: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit9Flashcards()
}
