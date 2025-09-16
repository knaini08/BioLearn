//
//  Unit6Flashcards.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct Unit6Flashcards: View {
    let allFlashcards: [Flashcard6] = [
        Flashcard6(
            question: "DNA",
            answer: "Double-stranded helix, stores genetic information.",
            explanation: "DNA (deoxyribonucleic acid) consists of two strands forming a double helix and contains genetic instructions.",
            topic: "6.1"
        ),
        Flashcard6(
            question: "RNA",
            answer: "Single-stranded, involved in protein synthesis.",
            explanation: "RNA (ribonucleic acid) helps transfer genetic information from DNA and plays a role in protein synthesis.",
            topic: "6.1"
        ),
        Flashcard6(
            question: "DNA nucleotide base pairing",
            answer: "A-T, C-G",
            explanation: "In DNA, adenine pairs with thymine (A-T), and cytosine pairs with guanine (C-G) via hydrogen bonds.",
            topic: "6.1"
        ),
        Flashcard6(
            question: "RNA nucleotide base pairing",
            answer: "A-U, C-G",
            explanation: "In RNA, adenine pairs with uracil (A-U) instead of thymine, while cytosine still pairs with guanine.",
            topic: "6.1"
        ),
        Flashcard6(
            question: "Pyrimidines",
            answer: "Cytosine, thymine, uracil.",
            explanation: "Pyrimidines are single-ring nitrogenous bases; DNA has cytosine and thymine, RNA has cytosine and uracil.",
            topic: "6.1"
        ),
        Flashcard6(
            question: "Purines",
            answer: "Adenine, guanine.",
            explanation: "Purines are double-ring nitrogenous bases found in both DNA and RNA.",
            topic: "6.1"
        ),
        Flashcard6(
            question: "Prokaryotic genome",
            answer: "Single, circular DNA molecule.",
            explanation: "Prokaryotes (bacteria, archaea) have a circular genome without a nucleus.",
            topic: "6.1"
        ),
        Flashcard6(
            question: "DNA replication is semiconservative",
            answer: "Each new DNA has one old strand.",
            explanation: "In semiconservative replication, each daughter DNA consists of one original strand and one new strand.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "Phosphate terminus",
            answer: "5' end of DNA strand.",
            explanation: "The phosphate group is attached to the 5' carbon of the sugar in a nucleotide, marking the 5' end.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "Hydroxyl terminus",
            answer: "3' end of DNA strand.",
            explanation: "The hydroxyl (-OH) group is attached to the 3' carbon of the sugar, marking the 3' end of DNA.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "Antiparallel",
            answer: "DNA strands run in opposite directions.",
            explanation: "One DNA strand runs 5' to 3', while the other runs 3' to 5', allowing complementary base pairing.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "Leading strand",
            answer: "Synthesized continuously in 5' to 3'.",
            explanation: "The leading strand is replicated smoothly in the direction of the replication fork.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "Lagging strand",
            answer: "Synthesized in Okazaki fragments.",
            explanation: "The lagging strand is synthesized discontinuously, forming short fragments that are later joined together.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "Helicase",
            answer: "Unzips the DNA strands.",
            explanation: "Helicase breaks hydrogen bonds between base pairs, opening the double helix for replication.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "Topoisomerase",
            answer: "Relieves DNA supercoiling.",
            explanation: "Topoisomerase prevents DNA from becoming too tightly wound ahead of the replication fork.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "DNA polymerase",
            answer: "Adds nucleotides to new strand.",
            explanation: "DNA polymerase extends the DNA chain by adding complementary nucleotides in the 5' to 3' direction.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "Ligase",
            answer: "Seals gaps in DNA strand.",
            explanation: "DNA ligase connects Okazaki fragments on the lagging strand by forming phosphodiester bonds.",
            topic: "6.2"
        ),
        Flashcard6(
            question: "Flow of genetic information",
            answer: "DNA → RNA → Protein.",
            explanation: "Genetic information flows from DNA to RNA via transcription, then from RNA to protein via translation.",
            topic: "6.3"
        ),
        Flashcard6(
            question: "Transcription",
            answer: "DNA to RNA process.",
            explanation: "Transcription is the synthesis of RNA from a DNA template, carried out by RNA polymerase.",
            topic: "6.3"
        ),
        Flashcard6(
            question: "RNA polymerase",
            answer: "Synthesizes RNA from DNA.",
            explanation: "RNA polymerase binds to DNA, unwinds it, and builds an RNA strand complementary to the DNA template.",
            topic: "6.3"
        ),
        Flashcard6(
            question: "Codon",
            answer: "Three-nucleotide RNA sequence.",
            explanation: "A codon is a set of three RNA nucleotides that codes for a specific amino acid during translation.",
            topic: "6.3"
        ),
        Flashcard6(
            question: "Anti-codon",
            answer: "tRNA sequence pairing with mRNA.",
            explanation: "The anticodon is a complementary three-nucleotide sequence on tRNA that pairs with the mRNA codon.",
            topic: "6.3"
        ),
        Flashcard6(
            question: "mRNA",
            answer: "Messenger RNA carries genetic code.",
            explanation: "mRNA is transcribed from DNA and carries the instructions for protein synthesis to the ribosome.",
            topic: "6.3"
        ),
        Flashcard6(
            question: "tRNA",
            answer: "Transfers amino acids to ribosome.",
            explanation: "tRNA has an anticodon and carries the correct amino acid to the ribosome during translation.",
            topic: "6.3"
        ),
        Flashcard6(
            question: "rRNA",
            answer: "Forms ribosome's structure.",
            explanation: "Ribosomal RNA (rRNA) is a key component of ribosomes, which assemble proteins from amino acids.",
            topic: "6.3"
        ),
        Flashcard6(
            question: "Retrovirus translation",
            answer: "RNA to DNA to protein.",
            explanation: "Retroviruses use reverse transcriptase to convert RNA into DNA before translation.",
            topic: "6.4"
        ),
        Flashcard6(
            question: "Reverse transcriptase",
            answer: "Enzyme for RNA to DNA.",
            explanation: "Retroviruses use reverse transcriptase to transcribe RNA into complementary DNA (cDNA).",
            topic: "6.4"
        ),
        Flashcard6(
            question: "Initiation",
            answer: "Ribosome binds to mRNA.",
            explanation: "Translation begins when the ribosome assembles around the mRNA and the first tRNA binds to the start codon.",
            topic: "6.4"
        ),
        Flashcard6(
            question: "mRNA codon chart",
            answer: "Decodes mRNA to amino acids.",
            explanation: "The mRNA codon chart helps determine which amino acid corresponds to each mRNA codon.",
            topic: "6.4"
        ),
        Flashcard6(
            question: "Elongation",
            answer: "Amino acids are added sequentially.",
            explanation: "During elongation, tRNAs bring amino acids to the ribosome, and the polypeptide chain grows.",
            topic: "6.4"
        ),
        Flashcard6(
            question: "Termination",
            answer: "Stop codon ends translation.",
            explanation: "Translation stops when a stop codon is reached, causing the ribosome to release the completed polypeptide.",
            topic: "6.4"
        ),
        Flashcard6(
            question: "Gene expression",
            answer: "Turning genes on or off.",
            explanation: "Gene expression is the process by which genetic information is used to synthesize proteins.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Regulatory sequences",
            answer: "Control gene expression.",
            explanation: "Regulatory sequences, such as promoters and enhancers, influence transcription.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Histones",
            answer: "DNA-packaging proteins.",
            explanation: "Histones help condense DNA into chromatin, affecting gene accessibility.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Tissues",
            answer: "Groups of specialized cells.",
            explanation: "Tissues are collections of differentiated cells that perform specific functions.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Cell differentiation",
            answer: "Cells become specialized.",
            explanation: "Cell differentiation allows stem cells to develop into specific cell types.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Transcription factors",
            answer: "Proteins that regulate genes.",
            explanation: "Transcription factors bind to DNA to activate or repress gene transcription.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Undifferentiated cells",
            answer: "Not specialized.",
            explanation: "Undifferentiated cells, like stem cells, can develop into multiple cell types.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Partially differentiated cells",
            answer: "Limited potential.",
            explanation: "Partially differentiated cells can only become a few related cell types.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Fully differentiated cells",
            answer: "Specialized function.",
            explanation: "Fully differentiated cells perform specific roles, such as neurons or muscle cells.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Transcription factor 1",
            answer: "Activates gene A.",
            explanation: "This transcription factor binds to regulatory sequences to activate gene A expression.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Transcription factor 2",
            answer: "Represses gene B.",
            explanation: "This transcription factor inhibits transcription of gene B.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Transcription factor 3",
            answer: "Enhances gene C.",
            explanation: "This transcription factor works with enhancers to boost gene C expression.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Operons",
            answer: "Gene clusters with one promoter.",
            explanation: "Operons are units of linked genes that are transcribed together in prokaryotes.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Operator",
            answer: "DNA segment controlling transcription.",
            explanation: "The operator is a regulatory DNA sequence where repressors bind to inhibit gene expression.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Regulatory protein",
            answer: "Controls gene transcription.",
            explanation: "Regulatory proteins, such as repressors and activators, influence RNA polymerase activity.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Lac operon",
            answer: "Regulates lactose metabolism.",
            explanation: "The lac operon in bacteria is an inducible system that activates when lactose is present.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Inducer",
            answer: "Molecule activating transcription.",
            explanation: "Inducers, like allolactose, bind to repressors to initiate transcription of certain genes.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Lac operon transcription factors",
            answer: "Regulate lactose genes.",
            explanation: "The lac operon is controlled by transcription factors such as the lac repressor and CAP protein.",
            topic: "6.5"
        ),
        Flashcard6(
            question: "Promoter",
            answer: "DNA sequence where transcription begins.",
            explanation: "The promoter is the binding site for RNA polymerase to initiate gene transcription.",
            topic: "6.6"
        ),
        Flashcard6(
            question: "Promoter sequence",
            answer: "Short DNA sequence that facilitates RNA polymerase binding.",
            explanation: "Promoter sequences are essential for the accurate initiation of transcription in genes.",
            topic: "6.6"
        ),
        Flashcard6(
            question: "Negative regulatory molecules",
            answer: "Molecules that inhibit gene expression.",
            explanation: "Negative regulators, such as repressors, bind to the operator and prevent transcription.",
            topic: "6.6"
        ),
        Flashcard6(
            question: "Regulatory protein",
            answer: "Protein that controls gene expression.",
            explanation: "Regulatory proteins can act as repressors or activators to modulate transcription rates.",
            topic: "6.6"
        ),
        Flashcard6(
            question: "Regulatory genes",
            answer: "Genes that encode regulatory proteins.",
            explanation: "Regulatory genes produce proteins that help control the expression of other genes.",
            topic: "6.6"
        ),
        Flashcard6(
            question: "Mutations",
            answer: "Changes in DNA sequence.",
            explanation: "Mutations can occur naturally or due to environmental factors and may affect gene expression or protein function.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Positive DNA mutation",
            answer: "Mutation that benefits the organism.",
            explanation: "Positive mutations can enhance an organism’s survival or reproduction, providing an evolutionary advantage.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Neutral DNA mutation",
            answer: "Mutation with no effect on fitness.",
            explanation: "Neutral mutations do not affect an organism’s survival or reproduction and are often silent mutations.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Negative DNA mutation",
            answer: "Mutation that harms the organism.",
            explanation: "Negative mutations can reduce the organism's fitness by disrupting normal gene function or protein production.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Gene mutations",
            answer: "Alterations in the nucleotide sequence of a gene.",
            explanation: "Gene mutations can lead to changes in the protein produced, potentially affecting its function and the organism’s traits.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Protein produced",
            answer: "End product of gene expression.",
            explanation: "Mutations in the gene sequence can alter the protein produced, potentially leading to diseases or changes in traits.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Sickle cell disease",
            answer: "Genetic disorder caused by a mutation in hemoglobin.",
            explanation: "Sickle cell disease is caused by a point mutation that alters hemoglobin structure, leading to sickle-shaped red blood cells.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Causes of mutations",
            answer: "Factors that alter the DNA sequence.",
            explanation: "Mutations can be caused by errors during DNA replication, environmental factors, or external agents like radiation.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Nondisjunction",
            answer: "Failure of chromosome pairs to separate properly.",
            explanation: "Nondisjunction can lead to gametes with too many or too few chromosomes, causing conditions like trisomy.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Errors in mitosis or meiosis",
            answer: "Mistakes in cell division leading to abnormal chromosome numbers.",
            explanation: "Errors during mitosis or meiosis can result in genetic disorders due to improper chromosome segregation.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Triploidy",
            answer: "Condition with three sets of chromosomes.",
            explanation: "Triploidy occurs when a fertilized egg has three complete sets of chromosomes, usually leading to developmental issues.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Polyploidy",
            answer: "Condition with more than two sets of chromosomes.",
            explanation: "Polyploidy can occur naturally or through errors in cell division, and it is more common in plants.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Trisomy 21",
            answer: "Down syndrome, caused by an extra chromosome 21.",
            explanation: "Trisomy 21 results from nondisjunction and causes developmental and intellectual disabilities in humans.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Environmental context",
            answer: "External factors influencing mutation rates.",
            explanation: "Environmental factors such as radiation, chemicals, and UV light can increase mutation rates and impact DNA.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Polyploidy in plants",
            answer: "Common occurrence in plants, leading to larger sizes.",
            explanation: "Polyploidy is often beneficial in plants, resulting in increased size and vigor, and is a mechanism for speciation.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Natural selection",
            answer: "Process where organisms with favorable traits are more likely to survive and reproduce.",
            explanation: "Natural selection leads to the evolution of species by favoring individuals with traits that improve survival and reproduction.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Variation",
            answer: "Differences in traits among individuals in a population.",
            explanation: "Variation provides the raw material for natural selection, enabling populations to adapt to changing environments.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Transformation",
            answer: "The uptake of naked DNA by a cell.",
            explanation: "In transformation, bacteria or other cells take up free-floating DNA from their environment, which can introduce new traits.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Transduction",
            answer: "Transmission of foreign DNA into a cell by a virus.",
            explanation: "Transduction occurs when a bacteriophage transfers DNA between bacteria, facilitating genetic diversity.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Conjugation",
            answer: "Direct transfer of DNA between two bacterial cells.",
            explanation: "Conjugation involves one bacterium transferring genetic material to another through a pilus, often contributing to antibiotic resistance.",
            topic: "6.7"
        ),
        Flashcard6(
            question: "Transposition",
            answer: "Movement of DNA segments within the genome.",
            explanation: "Transposons, or 'jumping genes,' can move from one location to another within a genome, affecting gene expression and genetic diversity.",
            topic: "6.7"
        ), 
        Flashcard6(
            question: "Genetic engineering",
            answer: "Manipulating an organism's DNA to achieve desired traits.",
            explanation: "Genetic engineering involves techniques like gene editing, cloning, and recombinant DNA to modify an organism's genetic material.",
            topic: "6.8"
        ),
        Flashcard6(
            question: "Electrophoresis",
            answer: "Technique used to separate DNA fragments by size.",
            explanation: "Electrophoresis uses an electric field to move DNA fragments through a gel, allowing scientists to analyze and compare them.",
            topic: "6.8"
        ),
        Flashcard6(
            question: "PCR",
            answer: "Polymerase chain reaction, a method for amplifying DNA.",
            explanation: "PCR is a technique used to make millions of copies of a specific DNA segment, enabling detailed analysis and research.",
            topic: "6.8"
        ),
        Flashcard6(
            question: "DNA sequencing",
            answer: "Determining the exact order of nucleotides in a DNA molecule.",
            explanation: "DNA sequencing allows scientists to read the genetic code, which is crucial for understanding genes and mutations.",
            topic: "6.8"
        ),
        Flashcard6(
            question: "Bacterial transformation",
            answer: "Process of introducing foreign DNA into a bacterial cell.",
            explanation: "Bacterial transformation enables bacteria to acquire new genetic material, often used in genetic engineering to produce proteins.",
            topic: "6.8"
        ),
        









    ]
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["6.1", "6.2", "6.3", "6.4", "6.5", "6.6", "6.7", "6.8"]
    
    var filteredFlashcards: [Flashcard6] {
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
                        ForEach(["6.1", "6.2", "6.3", "6.4", "6.5", "6.6", "6.7", "6.8"], id: \.self) { topic in
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

struct Flashcard6: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit6Flashcards()
}

