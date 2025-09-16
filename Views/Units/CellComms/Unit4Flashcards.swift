//
//  Unit4Flashcards.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct Unit4Flashcards: View {
    let allFlashcards: [Flashcard4] = [
        Flashcard4(
               question: "Chemical signals",
               answer: "Cells communicate through chemical signals.",
               explanation: "Chemical signals are used to coordinate cellular functions.",
               topic: "4.1"
           ),
           Flashcard4(
               question: "Local regulators",
               answer: "Molecules acting over short distances.",
               explanation: "Local regulators influence nearby cells in processes like healing.",
               topic: "4.1"
           ),
           Flashcard4(
               question: "Target cell",
               answer: "Cell receiving and responding to a signal.",
               explanation: "Target cells have receptors for specific chemical signals.",
               topic: "4.1"
           ),
           Flashcard4(
               question: "Short/Long distance signaling",
               answer: "Signaling occurs both locally and over long distances.",
               explanation: "Short signaling acts locally, while long-distance signaling uses hormones.",
               topic: "4.1"
           ),
           Flashcard4(
               question: "Cell-cell contact",
               answer: "Direct communication between adjacent cells.",
               explanation: "Cells use gap junctions for direct signal transfer.",
               topic: "4.1"
           ),
           Flashcard4(
               question: "Neurotransmitters",
               answer: "Chemical signals between nerve cells.",
               explanation: "Neurotransmitters transmit signals across synapses in the nervous system.",
               topic: "4.1"
           ),
        Flashcard4(
                question: "Cell-to-cell communication",
                answer: "Critical for cell function and survival.",
                explanation: "Cells rely on communication for coordination.",
                topic: "4.1"
            ),
            Flashcard4(
                question: "Direct contact communication",
                answer: "Occurs through cell junctions.",
                explanation: "Cell junctions allow material exchange.",
                topic: "4.1"
            ),
            Flashcard4(
                question: "Local regulators",
                answer: "Chemical signals traveling short distances.",
                explanation: "Regulators like ligands impact nearby cells.",
                topic: "4.1"
            ),
            Flashcard4(
                question: "Synaptic signaling",
                answer: "Occurs in nervous systems.",
                explanation: "Neurons release neurotransmitters for signaling.",
                topic: "4.1"
            ),
            Flashcard4(
                question: "Long-distance signaling",
                answer: "Hormones used in animals and plants.",
                explanation: "Hormones travel through bloodstream or plant vessels.",
                topic: "4.1"
            ),
        Flashcard4(
                question: "Signal transduction pathways",
                answer: "Pathways that relay signals within cells.",
                explanation: "Signal transduction pathways help cells respond to external signals.",
                topic: "4.2"
            ),
        Flashcard4(
                question: "Signal transduction",
                answer: "Three stages: reception, transduction, response.",
                explanation: "These stages process cellular signals.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Phosphorylation cascade",
                answer: "Amplifies signal for cellular response.",
                explanation: "Phosphorylation activates proteins in signal pathways.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "G-protein coupled receptors",
                answer: "Largest class of cell surface receptors.",
                explanation: "GPCRs transmit signals via G proteins.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Ligand",
                answer: "Signal molecule binding to a receptor.",
                explanation: "Ligands initiate cellular responses when bound.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Second messengers",
                answer: "Small molecules that amplify signals.",
                explanation: "cAMP is a common second messenger.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "3 stages of cell comms",
                answer: "Reception, transduction, and response.",
                explanation: "The three stages are reception of signals, their transduction, and cellular response.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Reception",
                answer: "The cell detects a signaling molecule.",
                explanation: "Reception is the first step where receptors bind to signaling molecules.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Transduction",
                answer: "Signal is relayed and amplified inside the cell.",
                explanation: "Transduction involves a series of intracellular events after reception.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Response",
                answer: "The cell reacts to the signal.",
                explanation: "Response triggers a specific cellular action, like gene expression.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Phosphorylation cascade",
                answer: "A series of protein activations via phosphorylation.",
                explanation: "Phosphorylation cascades amplify signals and activate multiple targets.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "G-protein coupled receptors",
                answer: "Receptors that activate G-proteins for signaling.",
                explanation: "G-protein coupled receptors mediate responses to various signals.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Ligand",
                answer: "A molecule that binds to a receptor.",
                explanation: "Ligands can be hormones or neurotransmitters that trigger cellular responses.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Receptor",
                answer: "A protein that binds ligands for signal detection.",
                explanation: "Receptors are proteins on the cell surface or inside the cell.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Second messengers (cAMP)",
                answer: "Molecules that relay signals inside the cell.",
                explanation: "cAMP is a common second messenger in signal transduction.",
                topic: "4.2"
            ),
            Flashcard4(
                question: "Cell environment response",
                answer: "Cells adapt based on environmental signals.",
                explanation: "Cells respond to external stimuli to maintain homeostasis.",
                topic: "4.3"
            ),
            Flashcard4(
                question: "Changes in gene expression",
                answer: "Signal transduction can alter gene activity.",
                explanation: "Signals can turn genes on/off, impacting cellular processes.",
                topic: "4.3"
            ),
            Flashcard4(
                question: "Changes in cell function",
                answer: "Cell behavior is adjusted in response to signals.",
                explanation: "Cell function can change, affecting metabolism and growth.",
                topic: "4.3"
            ),
            Flashcard4(
                question: "Changes alter cellular response",
                answer: "Pathway alterations modify cell behavior.",
                explanation: "Even small changes can significantly affect cell functions.",
                topic: "4.4"
            ),
            Flashcard4(
                question: "Activators",
                answer: "Molecules that enhance signal pathway activity.",
                explanation: "Activators increase the response to signals.",
                topic: "4.4"
            ),
            Flashcard4(
                question: "Inhibitors",
                answer: "Molecules that block signal pathway activity.",
                explanation: "Inhibitors reduce or halt cellular responses.",
                topic: "4.4"
            ),
        
            Flashcard4(
                question: "Negative feedback",
                answer: "Process that counteracts changes to maintain balance.",
                explanation: "Negative feedback helps maintain homeostasis in the body.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Homeostasis",
                answer: "Stable internal environment despite external changes.",
                explanation: "Homeostasis is essential for proper cell function.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Positive feedback",
                answer: "Amplifies the initial stimulus.",
                explanation: "Positive feedback reinforces changes, pushing towards a goal.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Positive feedback example",
                answer: "Childbirth involves a positive feedback loop.",
                explanation: "In childbirth, contractions intensify until delivery occurs.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Negative feedback example",
                answer: "Body temperature regulation is an example.",
                explanation: "Shivering or sweating helps maintain a stable body temp.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Homeostasis",
                answer: "Stable internal conditions.",
                explanation: "Homeostasis maintains balanced body functions.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Negative feedback",
                answer: "Reduces the effect of a stimulus.",
                explanation: "It stabilizes internal conditions.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Positive feedback",
                answer: "Increases the effect of a stimulus.",
                explanation: "It reinforces changes like childbirth.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Negative feedback example",
                answer: "Body temperature regulation.",
                explanation: "Shivering/sweating maintains body temperature.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Positive feedback example",
                answer: "Childbirth contractions.",
                explanation: "Contractions intensify until delivery.",
                topic: "4.5"
            ),
        
            Flashcard4(
                question: "Disease and homeostasis",
                answer: "Body unable to maintain stable conditions.",
                explanation: "Diseases disrupt homeostatic balance.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Diabetes",
                answer: "Blood glucose regulation is disrupted.",
                explanation: "Insulin resistance or deficiency affects glucose.",
                topic: "4.5"
            ),
            Flashcard4(
                question: "Cancer",
                answer: "Unregulated cell growth.",
                explanation: "Cancer occurs when growth signals malfunction.",
                topic: "4.5"
            ),
        Flashcard4(
            question: "DNA packaging",
            answer: "Organize and package DNA before division.",
            explanation: "DNA must be organized before cell division.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Histones",
            answer: "Proteins that wrap DNA.",
            explanation: "Histones help form nucleosomes.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Nucleosomes",
            answer: "DNA wrapped around histones.",
            explanation: "Formed by histones binding to DNA.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Chromatin",
            answer: "String of nucleosomes.",
            explanation: "Chromatin is a material that makes up chromosomes.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Non-condensed chromatin",
            answer: "Chromatin in non-dividing cells.",
            explanation: "Chromatin is relaxed in non-dividing cells.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Condensed chromatin",
            answer: "Chromatin condenses to form chromosomes.",
            explanation: "Chromatin condenses after DNA replication.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Duplicated chromosome",
            answer: "Each chromosome has a duplicate copy.",
            explanation: "DNA replication results in duplicated chromosomes.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Sister chromatids",
            answer: "Two copies of a chromosome.",
            explanation: "Sister chromatids are identical copies joined at centromere.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Centromere",
            answer: "Region where sister chromatids attach.",
            explanation: "The centromere connects sister chromatids.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Kinetochore",
            answer: "Proteins that link chromatids to spindle.",
            explanation: "Kinetochores bind chromatids to the mitotic spindle.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Genome",
            answer: "All of a cell’s genetic information.",
            explanation: "The genome contains an organism's full DNA.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Homologous chromosomes",
            answer: "Chromosomes with same genes, same length.",
            explanation: "Homologous chromosomes pair up during meiosis.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Human gametes",
            answer: "Humans have 23 gametes.",
            explanation: "Gametes are haploid cells used in reproduction.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Interphase",
            answer: "The longest phase of the cell cycle.",
            explanation: "Interphase consists of G1, S, G2.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "G1 phase",
            answer: "Cell grows and carries out normal functions.",
            explanation: "G1 is the first stage of interphase.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "S phase",
            answer: "DNA replication and chromosome duplication.",
            explanation: "S phase occurs after G1 phase.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "G2 phase",
            answer: "Final growth and prep for mitosis.",
            explanation: "G2 occurs after DNA replication.",
            topic: "4.6"
        ),
        Flashcard4(
            question: "Mitosis",
            answer: "Division of the nucleus.",
            explanation: "Mitosis produces two identical daughter nuclei.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Cytokinesis",
            answer: "Division of the cytoplasm.",
            explanation: "Cytokinesis occurs after mitosis.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Diploid cells",
            answer: "Two identical diploid daughter cells.",
            explanation: "Mitosis results in two identical diploid cells.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Prophase",
            answer: "Chromatin condenses.",
            explanation: "Prophase is the first stage of mitosis.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Prometaphase",
            answer: "Nuclear envelope fragments.",
            explanation: "Nuclear envelope breaks down in prometaphase.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Metaphase",
            answer: "Chromosomes align at the cell center.",
            explanation: "Chromosomes are positioned along the metaphase plate.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Anaphase",
            answer: "Sister chromatids separate.",
            explanation: "Chromatids are pulled apart to opposite poles.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Telophase",
            answer: "Daughter nuclei form.",
            explanation: "Telophase is the final stage of mitosis.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "46 chromosomes",
            answer: "Chromosomes in human cells during prophase.",
            explanation: "Human cells have 46 chromosomes during prophase.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "M checkpoint",
            answer: "Checks microtubule attachment to chromosomes.",
            explanation: "The M checkpoint ensures correct spindle attachment.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Cyclins",
            answer: "Proteins that regulate the cell cycle.",
            explanation: "Cyclins bind to CDKs to activate them.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "CDKs",
            answer: "Enzymes activated by specific cyclins.",
            explanation: "CDKs drive cell cycle progression.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Apoptosis",
            answer: "Programmed cell death.",
            explanation: "Apoptosis occurs when DNA damage is irreparable.",
            topic: "4.7"
        ),
        Flashcard4(
            question: "Growth factors",
            answer: "Hormones that stimulate cell growth.",
            explanation: "Growth factors are essential for tissue repair.",
            topic: "4.7"
        )
    ]
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["4.1", "4.2", "4.3", "4.4", "4.5", "4.6", "4.7", "4.8", "4.9", "4.10"]
    
    var filteredFlashcards: [Flashcard4] {
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
                        ForEach(["4.1", "4.2", "4.3", "4.4", "4.5", "4.6", "4.7", "4.8", "4.9", "4.10"], id: \.self) { topic in
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

struct Flashcard4: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit4Flashcards()
}
