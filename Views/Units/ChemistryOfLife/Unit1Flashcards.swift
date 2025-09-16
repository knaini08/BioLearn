//
//  Unit1Flashcards.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/23/25.
//

import SwiftUI

struct Unit1Flashcards: View {
    let allFlashcards: [Flashcard] = [
        Flashcard(
            question: "Water is a _____ molecule.",
            answer: "Polar",
            explanation: "Water is polar, meaning there is an unequal sharing of electrons. The oxygen side is partially negative, while the hydrogen side is partially positive.",
            topic: "1.1"
        ),
        Flashcard(
            question: "Polar covalent bonds",
            answer: "Opposite ends of the molecule have opposite charges.",
            explanation: "Oxygen end has negative charge, hydrogen end has positive charge",
            topic: "1.1"
        ),
        Flashcard(
            question: "Type of bond that holds 2 water molecules together",
            answer: "Hydrogen Bonds",
            explanation: "The partially positive hydrogen on one molecule is attracted to the partially negative oxygen on another moleclue.",
            topic: "1.1"
        ),
        Flashcard(
            question: "Cohesion",
            answer: "-H bonding between 2 molecules\n-allows for surface tension",
            explanation: "Cohesion is the holding together of water molecules.",
            topic: "1.1"
        ),
        Flashcard(
            question: "Adhesion",
            answer: "-H bonding with other substances\n-allows for capillary action",
            explanation: "When adhesion is stronger than cohesion, water mvoes up (capillary action). The smaller a pipe, the more capillary action.",
            topic: "1.1"
        ),
        Flashcard(
            question: "Capillary Action",
            answer: "The upward movement of water",
            explanation: "Happens when adhesion forces are stronger than cohesion forces.",
            topic: "1.1"
        ),
        Flashcard(
            question: "High Specific Heat",
            answer: "Water controls temperature well, and resists changes in temperature.",
            explanation: "Heat must be absorbed to break hydrogen bonds, but heat is released when hydrogen bonds form",
            topic: "1.1"
        ),
        Flashcard(
            question: "Density (Floating Ice)",
            answer: "As water freezes, it becomes less dense, allowing ice to float.",
            explanation: "When cooled, H2O molecules move too slowly to break the bonds, benefiting marine life as they can live under ice sheets",
            topic: "1.1"
        ),
        Flashcard(
            question: "Solvent",
            answer: "Dissolving agent in solution (water is universal solvent)",
            explanation: "Its polar molecules are attracted to ions and other polar molecules it can form hydrogen bonds with",
            topic: "1.1"
        ),
        Flashcard(
            question: "Hydrophilic",
            answer: "Having an affinity for water",
            explanation: "Polar and ionic molecules are hydrophilic",
            topic: "1.1"
        ),
        Flashcard(
            question: "Carbon",
            answer: "Can form up to 4 covalent bonds, can form long chains, very versatile, long chains",
            explanation: "All life is mostly based on carbon. It is important due to its electron configuration.",
            topic: "1.2"
        ),
        Flashcard(
            question: "Hydrocarbons",
            answer: "Organic molecules consisting of only carbon and hydrogen",
            explanation: "Nonpolar, not soluble in water, gas at room temperature",
            topic: "1.2"
        ),
        Flashcard(
            question: "Organic Molecules",
            answer: "Compounds that contain carbon and hydrogen",
            explanation: "N/A",
            topic: "1.2"
        ),
        Flashcard(
            question: "Hydroxyl Group",
            answer: "-OH",
            explanation: "N/A",
            topic: "1.2"
        ),
        Flashcard(
            question: "Carbonyl group",
            answer: "C=O",
            explanation: "Pronounced carboneel",
            topic: "1.2"
        ),
        Flashcard(
            question: "Carboxyl group",
            answer: "-COOH",
            explanation: "N/A",
            topic: "1.2"
        ),
        Flashcard(
            question: "Amino Group",
            answer: "-NH2",
            explanation: "N/A",
            topic: "1.2"
        ),
        Flashcard(
            question: "Sulfhydryl Group",
            answer: "-SH",
            explanation: "N/A",
            topic: "1.2"
        ),
        Flashcard(
            question: "Methyl Group",
            answer: "-CH3",
            explanation: "N/A",
            topic: "1.2"
        ),
        Flashcard(
            question: "Phosphate Group",
            answer: "-OPO3",
            explanation: "N/A",
            topic: "1.2"
        ),
        Flashcard(
            question: "Macromolecules",
            answer: "Carbohydrates, Proteins, Nucleis Acids, Lipids",
            explanation: "Carbon forms large molecules known as macromolecules",
            topic: "1.3"
        ),
        Flashcard(
            question: "Polymer",
            answer: "A long molecule, chain of monomers",
            explanation: "Blocks known as Monomers, joined through covalent bonds",
            topic: "1.3"
        ),
        Flashcard(
            question: "Dehydration Reaction",
            answer: "Bonds two monomers with the loss of H20",
            explanation: "One monomer donates hydroxyl (-OH), one monomer donates H+",
            topic: "1.3"
        ),
        Flashcard(
            question: "Hydrolysis",
            answer: "Bonds two monomers with the loss of H20",
            explanation: "One monomer donates hydroxyl (-OH), one monomer donates H+",
            topic: "1.3"
        ),
        Flashcard(
              question: "Structure is related to _______ and vice versa",
              answer: "Function",
              explanation: "When you change structure of a protein, you change its function",
              topic: "1.4"
          ),
        Flashcard(
              question: "Monomers of proteins",
              answer: "Amino acids",
              explanation: "Proteins are composed of amino acid monomers linked by peptide bonds.",
              topic: "1.4"
          ),
          Flashcard(
              question: "Bond connecting amino acids in a protein",
              answer: "Peptide bond",
              explanation: "A covalent bond formed between the amino group of one amino acid and the carboxyl group of another.",
              topic: "1.4"
          ),
        Flashcard(
            question: "Membranes contain ______ and ________",
            answer: "Lipids and proteins",
            explanation: "The cellular membrane is filled with proteins, and is a phospholipid bilayer.",
            topic: "1.4"
        ),
          Flashcard(
              question: "Monomers of nucleic acids",
              answer: "Nucleotides",
              explanation: "Nucleic acids like DNA and RNA are composed of nucleotide monomers.",
              topic: "1.4"
          ),
          Flashcard(
              question: "Components of a nucleotide",
              answer: "A phosphate group, a five-carbon sugar, and a nitrogenous base",
              explanation: "These three components form the basic building block of nucleic acids.",
              topic: "1.4"
          ),
          Flashcard(
              question: "Monomers of carbohydrates",
              answer: "Monosaccharides",
              explanation: "Simple sugars that serve as the building blocks for more complex carbohydrates.",
              topic: "1.4"
          ),
        Flashcard(
            question: "Polymers of carbohydrates",
            answer: "Polyaccharides",
            explanation: "Simple sugars that serve as the building blocks for more complex carbohydrates.",
            topic: "1.4"
        ),
          Flashcard(
              question: "Bond connecting monosaccharides",
              answer: "Covalent bonds",
              explanation: "A covalent bond formed between two monosaccharides by a dehydration reaction.",
              topic: "1.4"
          ),
          Flashcard(
              question: "Main components of lipids",
              answer: "Glycerol and fatty acids",
              explanation: "Many lipids are formed from a glycerol molecule bonded to fatty acids.",
              topic: "1.4"
          ),
          Flashcard(
              question: "Are lipids considered polymers?",
              answer: "No",
              explanation: "Lipids are not true polymers because they are not composed of repeating monomer units.",
              topic: "1.4"
          ),
        Flashcard(
            question: "Carbohydrates contain a _______ group and many _________ groups",
            answer: "Carbonyl, Hydroxyl",
            explanation: "Long chain, multiples of the unit CH20",
            topic: "1.5"
        ),
        Flashcard(
            question: "Most common monosaccharide",
            answer: "Glucose",
            explanation: "Glucose is fuel for cells, and is used in cellular respiration",
            topic: "1.5"
        ),
        Flashcard(
            question: "Most common disaccharide",
            answer: "Sucrose",
            explanation: "Plants transfer carbohydrates from roots to leaves in the form of sucrose",
            topic: "1.5"
        ),
        Flashcard(
            question: "Storage polysaccharides",
            answer: "Starch and Glycogen",
            explanation: "Plants store starch in order to store excless glucose, animals store glycogen in liver and muscle cells.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Structural polysaccharides",
            answer: "Cellulose and Chitin",
            explanation: "Cellulose is the tough substance that forms plant cell walls, while Chitin forms the exoskelton of arthropods.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Amino Acids",
            answer: "Monomers of proteins\nAmino group, carboxyl group, R group",
            explanation: "Each amino acid (AA) has a unique side chain, can be grouped as polar, non-polar, or ionic.",
            topic: "1.5"
        ),
        Flashcard(
            question: "What are proteins made of?",
            answer: "Polypeptides",
            explanation: "Proteins consist of one or more polypeptides folded into a 3D shape.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Monomers of proteins",
            answer: "Amino acids",
            explanation: "Proteins are made of amino acids linked by peptide bonds.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Structure of an amino acid",
            answer: "Amino group, carboxyl group, R group",
            explanation: "The R group (side chain) determines the properties of the amino acid.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Bond between amino acids",
            answer: "Peptide bond",
            explanation: "Formed by dehydration synthesis between amino and carboxyl groups.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Levels of protein structure",
            answer: "Primary, secondary, tertiary, quaternary",
            explanation: "Each level affects the final 3D shape and function of the protein.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Primary structure of proteins",
            answer: "Sequence of amino acids",
            explanation: "Determined by genes and dictates higher structures.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Secondary structure of proteins",
            answer: "α-helix and β-pleated sheet",
            explanation: "Formed by hydrogen bonding between the backbone atoms.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Tertiary structure of proteins",
            answer: "3D folding due to R group interactions",
            explanation: "Stabilized by hydrophobic interactions, disulfide bridges, ionic bonds, and hydrogen bonds.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Quaternary structure of proteins",
            answer: "Multiple polypeptides interacting",
            explanation: "Only found in some proteins, like hemoglobin.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Function of proteins",
            answer: "Structure, transport, enzymes, defense, signaling",
            explanation: "Proteins have diverse functions in biological systems.",
            topic: "1.5"
        ),
        Flashcard(
            question: "What happens if protein structure is altered?",
            answer: "Loss of function",
            explanation: "Denaturation disrupts shape, affecting function.",
            topic: "1.5"
        ),
        Flashcard(
            question: "What are lipids?",
            answer: "Nonpolar, hydrophobic molecules",
            explanation: "Lipids include fats, phospholipids, and steroids.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Are lipids polymers?",
            answer: "No",
            explanation: "Lipids are not made of repeating monomer units.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Main types of lipids",
            answer: "Fats, phospholipids, steroids",
            explanation: "Each type has different structures and functions.",
            topic: "1.5"
        ),
        Flashcard(
            question: "What are fats composed of?",
            answer: "Glycerol and fatty acids",
            explanation: "Fats consist of a glycerol backbone and three fatty acid chains.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Difference between saturated and unsaturated fats",
            answer: "Saturated: no double bonds, Unsaturated: one or more double bonds",
            explanation: "Saturated fats are solid at room temp, unsaturated fats are liquid.",
            topic: "1.5"
        ),
        Flashcard(
            question: "What is a phospholipid?",
            answer: "Major component of cell membranes",
            explanation: "Contains a hydrophilic head and hydrophobic tails, forming a bilayer.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Structure of a phospholipid",
            answer: "Glycerol, 2 fatty acids, phosphate group",
            explanation: "Hydrophilic head interacts with water, hydrophobic tails repel water.",
            topic: "1.5"
        ),
        Flashcard(
            question: "What are steroids?",
            answer: "Lipids with four fused rings",
            explanation: "Examples include cholesterol and hormones like testosterone.",
            topic: "1.5"
        ),
        Flashcard(
            question: "Function of nucleic acids",
            answer: "Store, transmit, and express hereditary information",
            explanation: "DNA and RNA are responsible for genetic information in cells.",
            topic: "1.6"
        ),
        Flashcard(
            question: "Two types of nucleic acids",
            answer: "DNA and RNA",
            explanation: "Deoxyribonucleic acid (DNA) and Ribonucleic acid (RNA).",
            topic: "1.6"
        ),
        Flashcard(
            question: "Three components of a nucleotide",
            answer: "Nitrogenous base, pentose sugar, phosphate group",
            explanation: "These make up the monomer unit of nucleic acids.",
            topic: "1.6"
        ),
        Flashcard(
            question: "Two types of nitrogenous bases",
            answer: "Pyrimidines and purines",
            explanation: "Pyrimidines (C, T, U) have a single ring, while purines (A, G) have a double ring.",
            topic: "1.6"
        ),
        Flashcard(
            question: "Difference between DNA and RNA sugars",
            answer: "DNA has deoxyribose, RNA has ribose",
            explanation: "Ribose has an extra hydroxyl (-OH) group compared to deoxyribose.",
            topic: "1.6"
        ),
        Flashcard(
            question: "Type of bond linking nucleotides",
            answer: "Phosphodiester bond",
            explanation: "Forms between the phosphate of one nucleotide and the sugar of another.",
            topic: "1.6"
        ),
        Flashcard(
            question: "Directionality of nucleic acids",
            answer: "5’ to 3’",
            explanation: "Nucleotides are added to the 3’ end during synthesis.",
            topic: "1.6"
        ),
        Flashcard(
            question: "Structure of DNA",
            answer: "Double helix",
            explanation: "Two antiparallel strands held together by hydrogen bonds between bases.",
            topic: "1.6"
        ),
        Flashcard(
            question: "Base pairing rules in DNA",
            answer: "A-T, C-G",
            explanation: "Adenine pairs with thymine, cytosine pairs with guanine.",
            topic: "1.6"
        ),
        Flashcard(
            question: "Base pairing rules in RNA",
            answer: "A-U, C-G",
            explanation: "Uracil replaces thymine in RNA.",
            topic: "1.6"
        ),
        Flashcard(
            question: "RNA structure",
            answer: "Single-stranded",
            explanation: "RNA is usually single-stranded and can fold into various shapes.",
            topic: "1.6"
        )

    ]
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["1.1", "1.2", "1.3", "1.4", "1.5", "1.6"]
    
    var filteredFlashcards: [Flashcard] {
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
                        ForEach(["1.1", "1.2", "1.3", "1.4", "1.5", "1.6"], id: \.self) { topic in
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
                  
                            Text(filteredFlashcards[currentIndex].explanation)
                                .font(.body)
                                .foregroundColor(.primary)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                .padding(.top)
                        
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

struct Flashcard: Identifiable, Codable {
    var id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit1Flashcards()
}
