//
//  Unit5Flashcards.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct Unit5Flashcards: View {
    let allFlashcards: [Flashcard5] = [
        Flashcard5(
            question: "Diploid",
            answer: "Cells with two sets of chromosomes.",
            explanation: "Diploid cells have two copies of each chromosome.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Haploid",
            answer: "Cells with one set of chromosomes.",
            explanation: "Haploid cells have one copy of each chromosome.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Meiosis",
            answer: "Cell division producing haploid gametes.",
            explanation: "Meiosis reduces chromosome number by half.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Meiosis products",
            answer: "Four non-identical haploid cells.",
            explanation: "Meiosis produces four genetically distinct haploid cells.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Prophase I",
            answer: "Chromosomes condense, crossing over occurs.",
            explanation: "In prophase I, homologous chromosomes pair and exchange genes.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Metaphase I",
            answer: "Homologous chromosomes align at cell center.",
            explanation: "In metaphase I, homologous chromosomes line up on the metaphase plate.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Anaphase I",
            answer: "Homologous chromosomes are pulled apart.",
            explanation: "In anaphase I, homologous chromosomes separate to opposite poles.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Telophase I",
            answer: "Nuclei form, cell divides.",
            explanation: "In telophase I, the cell divides into two haploid cells.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Prophase II",
            answer: "Chromosomes condense in two haploid cells.",
            explanation: "In prophase II, chromosomes condense in two haploid cells.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Metaphase II",
            answer: "Chromosomes align at the cell center.",
            explanation: "In metaphase II, chromosomes align along the metaphase plate.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Anaphase II",
            answer: "Sister chromatids separate to opposite poles.",
            explanation: "In anaphase II, sister chromatids are pulled apart.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Telophase II",
            answer: "Nuclei form, and four haploid cells result.",
            explanation: "In telophase II, four non-identical haploid cells are produced.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Mitosis vs Meiosis",
            answer: "Mitosis produces two identical cells.",
            explanation: "Mitosis results in two identical diploid cells, meiosis in four haploid cells.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Mitosis vs Meiosis",
            answer: "Meiosis involves two rounds of division.",
            explanation: "Meiosis includes two divisions, mitosis only one.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Mitosis vs Meiosis",
            answer: "Meiosis includes crossing over.",
            explanation: "In meiosis, homologous chromosomes exchange genes during prophase I.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Mitosis vs Meiosis",
            answer: "Mitosis results in identical cells.",
            explanation: "Mitosis produces genetically identical cells, meiosis does not.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Mitosis vs Meiosis",
            answer: "Meiosis produces four cells, mitosis two.",
            explanation: "Meiosis produces four haploid cells, mitosis produces two diploid cells.",
            topic: "5.1"
        ),
        Flashcard5(
            question: "Four unique sex cells",
            answer: "Produced by meiosis, each genetically different.",
            explanation: "Meiosis results in four genetically unique haploid sex cells.",
            topic: "5.2"
        ),
        Flashcard5(
            question: "Zygote",
            answer: "Fertilized egg cell formed from gametes.",
            explanation: "The zygote is formed when sperm fertilizes an egg.",
            topic: "5.2"
        ),
        Flashcard5(
            question: "Fertilization",
            answer: "Union of sperm and egg to form zygote.",
            explanation: "Fertilization restores the diploid chromosome number.",
            topic: "5.2"
        ),
        Flashcard5(
            question: "Law of segregation",
            answer: "Each allele segregates into separate gametes.",
            explanation: "The law of segregation states that alleles separate during meiosis.",
            topic: "5.2"
        ),
        Flashcard5(
            question: "Independent assortment",
            answer: "Alleles for different traits segregate independently.",
            explanation: "Genes on different chromosomes assort independently during meiosis.",
            topic: "5.2"
        ),
        Flashcard5(
            question: "Crossing over",
            answer: "Homologous chromosomes exchange genetic material.",
            explanation: "Crossing over during prophase I increases genetic diversity.",
            topic: "5.2"
        ),
        Flashcard5(
            question: "Mendelian genetics",
            answer: "Study of inheritance patterns of traits.",
            explanation: "Mendelian genetics explains how traits are inherited through generations.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Gene",
            answer: "Unit of heredity that determines traits.",
            explanation: "Genes are segments of DNA that carry information for specific traits.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Allele",
            answer: "Different forms of a gene.",
            explanation: "Alleles can be dominant or recessive and determine a trait.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Dominant allele",
            answer: "Allele that expresses its trait even when heterozygous.",
            explanation: "Dominant alleles mask the effect of recessive alleles in heterozygotes.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Recessive allele",
            answer: "Allele that expresses trait only when homozygous.",
            explanation: "Recessive alleles are masked by dominant alleles in heterozygotes.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Homozygous",
            answer: "Having two identical alleles for a gene.",
            explanation: "Homozygous individuals carry two copies of the same allele.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Heterozygous",
            answer: "Having two different alleles for a gene.",
            explanation: "Heterozygous individuals carry one dominant and one recessive allele.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Genotype",
            answer: "The genetic makeup of an organism.",
            explanation: "Genotype refers to the specific alleles an organism has.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Phenotype",
            answer: "The observable traits of an organism.",
            explanation: "Phenotype results from the interaction between genotype and environment.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Punnett square",
            answer: "Diagram used to predict offspring genotypes.",
            explanation: "Punnett squares visualize genetic crosses and inheritance patterns.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Law of segregation",
            answer: "Alleles separate during gamete formation.",
            explanation: "Each gamete receives one allele from each gene pair.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Law of independent assortment",
            answer: "Genes for different traits assort independently.",
            explanation: "Alleles for different traits segregate independently during meiosis.",
            topic: "5.3"
        ),
        Flashcard5(
            question: "Non-Mendelian genetics",
            answer: "Inheritance patterns that don't follow Mendel's laws.",
            explanation: "Non-Mendelian genetics include cases where Mendelian laws don't apply.",
            topic: "5.4"
        ),
        Flashcard5(
            question: "Incomplete dominance",
            answer: "Heterozygous phenotype is a blend of alleles.",
            explanation: "In incomplete dominance, the phenotype is intermediate between the two alleles.",
            topic: "5.4"
        ),
        Flashcard5(
            question: "Codominance",
            answer: "Both alleles express their traits equally.",
            explanation: "In codominance, both alleles contribute equally to the phenotype.",
            topic: "5.4"
        ),
        Flashcard5(
            question: "Multiple alleles",
            answer: "More than two alleles exist for a gene.",
            explanation: "Multiple alleles occur when a gene has more than two forms, like blood type.",
            topic: "5.4"
        ),
        Flashcard5(
            question: "Polygenic inheritance",
            answer: "Multiple genes influence one trait.",
            explanation: "Polygenic inheritance results in a wide range of phenotypes, like skin color.",
            topic: "5.4"
        ),
        Flashcard5(
            question: "Epistasis",
            answer: "One gene affects the expression of another gene.",
            explanation: "In epistasis, one gene can mask or alter the expression of another.",
            topic: "5.4"
        ),
        Flashcard5(
            question: "Pleiotropy",
            answer: "One gene affects multiple traits.",
            explanation: "Pleiotropic genes influence more than one phenotype.",
            topic: "5.4"
        ),
        Flashcard5(
            question: "Environmental influences on genetics",
            answer: "External factors impact gene expression.",
            explanation: "Environmental factors like temperature or diet can affect genetic traits.",
            topic: "5.4"
        ),
        Flashcard5(
            question: "X-linked inheritance",
            answer: "Genes located on the X chromosome.",
            explanation: "X-linked traits are inherited through the X chromosome, affecting males and females differently.",
            topic: "5.4"
        ),
        Flashcard5(
            question: "Environmental effects on phenotype",
            answer: "External factors can influence an organism's traits.",
            explanation: "Phenotypes can be shaped by environmental conditions like temperature or diet.",
            topic: "5.5"
        ),
        Flashcard5(
            question: "Temperature-dependent sex determination",
            answer: "Sex of some animals is determined by temperature.",
            explanation: "In certain species, like reptiles, temperature influences the sex of offspring.",
            topic: "5.5"
        ),
        
        Flashcard5(
            question: "Chromosomal inheritance",
            answer: "Genes are inherited through chromosomes.",
            explanation: "Inheritance patterns follow the movement of chromosomes during cell division.",
            topic: "5.6"
        ),
        Flashcard5(
            question: "Chromosome theory of inheritance",
            answer: "Genes are located on chromosomes.",
            explanation: "This theory states that inheritance is governed by the behavior of chromosomes during meiosis.",
            topic: "5.6"
        ),
        Flashcard5(
            question: "Linked genes",
            answer: "Genes on the same chromosome tend to be inherited together.",
            explanation: "Linked genes are less likely to be separated during meiosis.",
            topic: "5.6"
        ),
        Flashcard5(
            question: "Independent assortment",
            answer: "Chromosomes segregate independently during meiosis.",
            explanation: "The random distribution of chromosomes during meiosis leads to genetic variation.",
            topic: "5.6"
        ),
        Flashcard5(
            question: "Crossing over",
            answer: "Exchange of genetic material between homologous chromosomes.",
            explanation: "Crossing over creates genetic diversity by exchanging alleles between chromosomes.",
            topic: "5.6"
        ),
        Flashcard5(
            question: "Sex chromosomes",
            answer: "Chromosomes determining biological sex.",
            explanation: "In humans, females have XX and males have XY chromosomes.",
            topic: "5.6"
        )
    ]
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["5.1", "5.2", "5.3", "5.4", "5.5", "5.6"]
    
    var filteredFlashcards: [Flashcard5] {
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
                        ForEach(["5.1", "5.2", "5.3", "5.4", "5.5", "5.6"], id: \.self) { topic in
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

struct Flashcard5: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit5Flashcards()
}
