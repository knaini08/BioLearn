//
//  Unit7Flashcards.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct Unit7Flashcards: View {
    let allFlashcards: [Flashcard7] = [
        Flashcard7(
            question: "Natural selection",
            answer: "Organisms with favorable traits survive and reproduce.",
            explanation: "Natural selection favors traits that improve survival and reproduction, leading to evolutionary changes over generations.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Evolution",
            answer: "Change in genetic makeup over generations.",
            explanation: "Evolution occurs through processes like natural selection, genetic drift, and gene flow, leading to species changes.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Competition",
            answer: "Organisms struggle for limited resources.",
            explanation: "Competition occurs when individuals compete for food, mates, or shelter, affecting survival and reproduction.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Variation",
            answer: "Differences in traits among individuals.",
            explanation: "Variation provides genetic diversity necessary for natural selection to act upon.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Adaptations",
            answer: "Inherited traits enhancing survival and reproduction.",
            explanation: "Adaptations are beneficial traits shaped by natural selection over generations.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Fitness",
            answer: "Ability to survive and reproduce in an environment.",
            explanation: "Fitness measures how well traits help organisms survive and reproduce.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Reproductive success",
            answer: "Passing genes to the next generation.",
            explanation: "Reproductive success is measured by the number of surviving offspring that reproduce.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Heritability",
            answer: "Proportion of trait variation passed to offspring.",
            explanation: "Heritability allows beneficial traits to be inherited, influencing evolution.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Ecosystem stability",
            answer: "Ecosystem’s ability to maintain balance over time.",
            explanation: "Ecosystem stability is supported by biodiversity and interactions among species.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Biotic factors",
            answer: "Living components of an ecosystem.",
            explanation: "Biotic factors include all living things interacting with organisms in an ecosystem.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Abiotic factors",
            answer: "Non-living components of an ecosystem.",
            explanation: "Abiotic factors like temperature and water influence organisms’ survival and traits.",
            topic: "7.1"
        ),
        Flashcard7(
            question: "Genetic variation",
            answer: "Differences in genetic makeup within a population.",
            explanation: "Genetic variation is essential for natural selection to act upon, providing a source of diverse traits.",
            topic: "7.2"
        ),
        Flashcard7(
            question: "Selective pressure",
            answer: "Factors that influence an organism's survival.",
            explanation: "Selective pressures such as predators, food availability, or climate conditions drive natural selection.",
            topic: "7.2"
        ),
        Flashcard7(
            question: "Fitness",
            answer: "Reproductive success over generations.",
            explanation: "Fitness refers to how well an organism can reproduce and pass on its genes, ensuring its traits persist.",
            topic: "7.2"
        ),
        Flashcard7(
            question: "DDT resistance",
            answer: "Ability of organisms to survive pesticide exposure.",
            explanation: "DDT resistance in organisms evolved due to natural selection, where resistant individuals survived and reproduced.",
            topic: "7.2"
        ),
        Flashcard7(
            question: "Artificial selection",
            answer: "Humans selectively breed organisms for desired traits.",
            explanation: "Artificial selection involves humans choosing organisms with beneficial traits to reproduce, shaping future generations.",
            topic: "7.3"
        ),
        Flashcard7(
            question: "Desirable traits",
            answer: "Traits preferred by humans in selective breeding.",
            explanation: "Desirable traits are characteristics that humans find beneficial and seek to propagate through breeding.",
            topic: "7.3"
        ),
        Flashcard7(
            question: "Phenotypic adaptations",
            answer: "Physical traits that enhance survival in an environment.",
            explanation: "Phenotypic adaptations are observable traits shaped by natural selection to improve an organism’s survival.",
            topic: "7.3"
        ),
        Flashcard7(
            question: "Convergent evolution",
            answer: "Unrelated species develop similar traits due to similar environments.",
            explanation: "Convergent evolution occurs when different species independently evolve similar traits to adapt to similar environments.",
            topic: "7.3"
        ),
        Flashcard7(
            question: "Analogous structures",
            answer: "Structures with similar functions but different origins.",
            explanation: "Analogous structures evolve in different species to perform similar functions but do not share a common ancestry.",
            topic: "7.3"
        ),
        Flashcard7(
            question: "Evolution is driven by random occurrences",
            answer: "Evolution can result from random genetic changes.",
            explanation: "Random events, like mutations or genetic drift, contribute to evolution by altering genetic variation.",
            topic: "7.4"
        ),
        Flashcard7(
            question: "Genetic drift",
            answer: "Random changes in allele frequencies over time.",
            explanation: "Genetic drift causes allele frequencies to fluctuate due to random sampling, especially in small populations.",
            topic: "7.4"
        ),
        Flashcard7(
            question: "Founder effect",
            answer: "Genetic variation limited by a small founding population.",
            explanation: "The founder effect occurs when a small group establishes a new population, leading to reduced genetic diversity.",
            topic: "7.4"
        ),
        Flashcard7(
            question: "Migration/gene flow",
            answer: "Movement of alleles between populations.",
            explanation: "Migration allows individuals to introduce new genetic material to different populations, increasing genetic diversity.",
            topic: "7.4"
        ),
        Flashcard7(
            question: "Random processes",
            answer: "Unpredictable events affecting allele frequencies.",
            explanation: "Random processes, like genetic drift and mutations, can influence the genetic makeup of a population.",
            topic: "7.4"
        ),
        Flashcard7(
            question: "Evolution",
            answer: "Change in allele frequencies over generations.",
            explanation: "Evolution occurs when allele frequencies in a population change due to factors like selection, drift, or gene flow.",
            topic: "7.4"
        ),
        Flashcard7(
            question: "Hardy-Weinberg model",
            answer: "Describes genetic equilibrium in a population.",
            explanation: "The Hardy-Weinberg model predicts allele frequencies remain constant under specific conditions.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "5 conditions",
            answer: "Requirements for Hardy-Weinberg equilibrium.",
            explanation: "Equilibrium requires a large population, no migration, no mutations, random mating, and no selection.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "Large population",
            answer: "Minimizes genetic drift effects.",
            explanation: "A large population reduces the impact of chance events on allele frequencies.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "Absence of migration",
            answer: "Prevents gene flow between populations.",
            explanation: "No migration ensures allele frequencies remain unchanged by external genetic input.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "No net mutation",
            answer: "Prevents changes in allele frequencies.",
            explanation: "Hardy-Weinberg equilibrium assumes no mutations introduce new alleles or alter existing ones.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "Random mating",
            answer: "Ensures equal chance of allele combinations.",
            explanation: "Mating must be random to maintain expected genotype frequencies.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "Absence of selection",
            answer: "No advantage for any trait.",
            explanation: "Equilibrium requires no selective pressures favoring certain alleles over others.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "Hardy-Weinberg equations",
            answer: "p^2 + 2pq + q^2 = 1, p + q = 1",
            explanation: "The equations predict genotype frequencies in a population at equilibrium.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "p squared is...",
            answer: "Frequency of homozygous dominant genotype.",
            explanation: "In Hardy-Weinberg, p² represents the proportion of individuals with the dominant genotype.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "2pq is...",
            answer: "Frequency of heterozygous genotype.",
            explanation: "The term 2pq represents individuals carrying both dominant and recessive alleles.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "q squared is...",
            answer: "Frequency of homozygous recessive genotype.",
            explanation: "In Hardy-Weinberg, q² represents the proportion of individuals with the recessive genotype.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "p is...",
            answer: "Frequency of the dominant allele.",
            explanation: "p represents the proportion of dominant alleles in a population.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "q is...",
            answer: "Frequency of the recessive allele.",
            explanation: "q represents the proportion of recessive alleles in a population.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "Disrupting factors",
            answer: "Mutations, non-random mating, gene flow, genetic drift.",
            explanation: "These factors disrupt Hardy-Weinberg equilibrium by altering allele frequencies over time.",
            topic: "7.5"
        ),
        Flashcard7(
            question: "Geographical",
            answer: "Species distribution provides evolutionary clues.",
            explanation: "Geographical patterns show how species evolved based on location and environmental factors.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Geological",
            answer: "Rock layers provide evolutionary history.",
            explanation: "Geological evidence, like strata, helps scientists study ancient life and evolutionary changes.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Physical",
            answer: "Observable traits show evolutionary relationships.",
            explanation: "Physical characteristics, such as body structures, provide evidence of common ancestry.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Biochemical",
            answer: "DNA and proteins reveal evolutionary links.",
            explanation: "Similarities in DNA and proteins indicate shared ancestry among species.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Mathematical",
            answer: "Models predict evolutionary patterns.",
            explanation: "Mathematical models help analyze genetic changes and evolutionary trends.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Fossils",
            answer: "Preserved remains show past life forms.",
            explanation: "Fossils provide direct evidence of evolutionary changes over time.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Methods of dating fossils",
            answer: "Relative and absolute dating techniques.",
            explanation: "Scientists use radiometric dating and stratigraphy to determine fossil ages.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Morphological homologies",
            answer: "Similar structures from common ancestry.",
            explanation: "Homologous structures indicate evolutionary relationships despite different functions.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Vestigial structures",
            answer: "Reduced structures with no function.",
            explanation: "Vestigial structures, like human tailbones, suggest evolutionary history.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Biochemical evidence",
            answer: "DNA similarities show relatedness.",
            explanation: "Closely related species have more similar DNA and protein sequences.",
            topic: "7.6"
        ),
        Flashcard7(
            question: "Evidence for common ancestry",
            answer: "Traits shared among diverse organisms.",
            explanation: "Common ancestry is supported by similarities in cellular structures and genetic material.",
            topic: "7.7"
        ),
        Flashcard7(
            question: "Membrane-bound organelles",
            answer: "Compartments in eukaryotic cells.",
            explanation: "Membrane-bound organelles, like mitochondria and the nucleus, suggest shared ancestry among eukaryotes.",
            topic: "7.7"
        ),
        Flashcard7(
            question: "Linear chromosomes",
            answer: "Eukaryotic DNA organized into strands.",
            explanation: "Linear chromosomes, found in eukaryotes, indicate a common evolutionary origin.",
            topic: "7.7"
        ),
        Flashcard7(
            question: "Genes contain introns",
            answer: "Non-coding regions in eukaryotic DNA.",
            explanation: "Introns, present in many eukaryotic genes, provide evidence of shared ancestry.",
            topic: "7.7"
        ),
        Flashcard7(
            question: "Mechanism of genetic change",
            answer: "Gene and chromosomal mutations.",
            explanation: "Mutations introduce genetic variation, driving evolutionary change over time.",
            topic: "7.8"
        ),
        Flashcard7(
            question: "Mechanism of genetic change 2",
            answer: "Cell division and meiosis.",
            explanation: "Meiosis and recombination create genetic diversity essential for evolution.",
            topic: "7.8"
        ),
        Flashcard7(
            question: "Mechanism of genetic change 3",
            answer: "Environmental disruptions.",
            explanation: "Environmental changes can drive genetic adaptations and evolution.",
            topic: "7.8"
        ),
        Flashcard7(
            question: "Continuous change in fossil record",
            answer: "Evidence of continued evolution.",
            explanation: "Fossils show gradual changes in species over time, supporting evolutionary theory.",
            topic: "7.8"
        ),
        Flashcard7(
            question: "Resistance to various chemicals",
            answer: "Resulted in species' evolution.",
            explanation: "Organisms evolving resistance, like antibiotic resistance, is evidence of ongoing evolution.",
            topic: "7.8"
        ),
        Flashcard7(
            question: "Pathogen",
            answer: "Disease-causing microorganism.",
            explanation: "Pathogens evolve rapidly, adapting to host defenses and treatments.",
            topic: "7.8"
        ),
        Flashcard7(
            question: "Phylogeny",
            answer: "Study of evolutionary relationships.",
            explanation: "Phylogeny traces the evolutionary history and connections between species.",
            topic: "7.9"
        ),
        Flashcard7(
            question: "Phylogenetic trees",
            answer: "Diagrams showing evolutionary relationships.",
            explanation: "Phylogenetic trees illustrate common ancestry and divergence among species.",
            topic: "7.9"
        ),
        Flashcard7(
            question: "Cladograms",
            answer: "Diagrams showing shared characteristics.",
            explanation: "Cladograms group organisms based on shared derived traits, not time.",
            topic: "7.9"
        ),
        Flashcard7(
            question: "Out-group",
            answer: "Distantly related reference group.",
            explanation: "An out-group helps determine ancestral and derived traits in a cladogram.",
            topic: "7.9"
        ),
        Flashcard7(
            question: "Node",
            answer: "Branch point in a tree.",
            explanation: "A node represents a common ancestor from which species diverged.",
            topic: "7.9"
        ),
        Flashcard7(
            question: "Derived character",
            answer: "Trait unique to a clade.",
            explanation: "Derived characters distinguish evolutionary branches in phylogenetic trees.",
            topic: "7.9"
        ),
        Flashcard7(
            question: "How to construct a cladogram",
            answer: "Use shared derived traits.",
            explanation: "Cladograms are built by grouping organisms based on common characteristics.",
            topic: "7.9"
        ),
        Flashcard7(
            question: "Speciation",
            answer: "Formation of new species.",
            explanation: "Speciation occurs when populations diverge and become reproductively isolated.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Where does speciation occur?",
            answer: "In isolated or overlapping populations.",
            explanation: "Speciation can occur in different environments or within the same area.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Speciation results in...",
            answer: "Genetically distinct species.",
            explanation: "Over time, genetic divergence leads to the emergence of new species.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Reproductive isolation",
            answer: "Prevents gene flow between populations.",
            explanation: "Reproductive isolation maintains species boundaries by preventing interbreeding.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Biological barriers prevent species from...",
            answer: "Interbreeding successfully.",
            explanation: "Reproductive barriers keep species separate and maintain genetic distinctions.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Prezygotic barriers",
            answer: "Prevent fertilization.",
            explanation: "Prezygotic barriers stop different species from mating or forming zygotes.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Habitat isolation",
            answer: "Species live in different environments.",
            explanation: "Habitat isolation prevents closely related species from encountering each other.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Temporal isolation",
            answer: "Species reproduce at different times.",
            explanation: "Temporal isolation occurs when mating seasons do not overlap.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Behavioral isolation",
            answer: "Differences in mating behaviors.",
            explanation: "Unique courtship behaviors prevent interbreeding between species.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Mechanical isolation",
            answer: "Incompatible reproductive structures.",
            explanation: "Mechanical isolation prevents mating due to physical differences.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Gamete isolation",
            answer: "Incompatible sperm and egg.",
            explanation: "Gamete isolation prevents fertilization due to molecular differences.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Postzygotic barriers",
            answer: "Prevent hybrid viability or fertility.",
            explanation: "Postzygotic barriers lead to weak or infertile offspring.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Hybrid inviability",
            answer: "Hybrid fails to develop or survive.",
            explanation: "Genetic incompatibilities cause hybrids to die early or not form properly.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Hybrid sterility",
            answer: "Hybrid cannot reproduce.",
            explanation: "Hybrid sterility prevents gene flow by producing infertile offspring.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Hybrid breakdown",
            answer: "Weak or sterile later generations.",
            explanation: "Hybrid breakdown leads to unfit descendants over multiple generations.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Allopatric speciation",
            answer: "Speciation due to geographic separation.",
            explanation: "Physical barriers prevent gene flow, leading to divergence.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Sympatric speciation",
            answer: "Speciation without geographic separation.",
            explanation: "New species arise in the same location due to genetic changes.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Punctuated equilibrium",
            answer: "Rapid changes with long stability.",
            explanation: "Punctuated equilibrium suggests evolution occurs in sudden bursts.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Gradualism",
            answer: "Slow, continuous evolution.",
            explanation: "Gradualism suggests species evolve through steady, incremental changes.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Adaptive radiation",
            answer: "Rapid speciation into diverse forms.",
            explanation: "Adaptive radiation occurs when species evolve to fill different ecological niches.",
            topic: "7.10"
        ),
        Flashcard7(
            question: "Extinction",
            answer: "Permanent loss of a species.",
            explanation: "Extinction occurs when a species can no longer survive or reproduce.",
            topic: "7.11"
        ),
        Flashcard7(
            question: "Ecological stress",
            answer: "Environmental changes affecting survival.",
            explanation: "Ecological stress, like resource scarcity, can lead to population decline.",
            topic: "7.11"
        ),
        Flashcard7(
            question: "Human activity",
            answer: "Causes environmental changes.",
            explanation: "Deforestation, pollution, and hunting contribute to species extinction.",
            topic: "7.11"
        ),
        Flashcard7(
            question: "Habitat loss",
            answer: "Destruction of living spaces.",
            explanation: "Deforestation and urbanization reduce habitats, endangering species.",
            topic: "7.11"
        ),
        Flashcard7(
            question: "Climate change",
            answer: "Long-term shifts in temperature.",
            explanation: "Rising temperatures and extreme weather threaten species' survival.",
            topic: "7.11"
        ),
        Flashcard7(
            question: "Pollution",
            answer: "Harmful substances in ecosystems.",
            explanation: "Pollution contaminates air, water, and land, impacting biodiversity.",
            topic: "7.11"
        ),
        Flashcard7(
            question: "Habitat degradation",
            answer: "Decline in habitat quality.",
            explanation: "Pollution, invasive species, and deforestation reduce habitat viability.",
            topic: "7.11"
        ),
        Flashcard7(
            question: "Niche",
            answer: "Organism's role in an ecosystem.",
            explanation: "A niche includes an organism's habitat, diet, and interactions.",
            topic: "7.11"
        ),
        Flashcard7(
            question: "Poaching",
            answer: "Illegal hunting of wildlife.",
            explanation: "Poaching threatens endangered species by reducing their populations.",
            topic: "7.11"
        ),
        Flashcard7(
            question: "Variation",
            answer: "Differences among individuals in a population.",
            explanation: "Variation arises from mutations, genetic recombination, and environmental factors.",
            topic: "7.12"
        ),
        Flashcard7(
            question: "Genetically diverse populations",
            answer: "More resistant to environmental change.",
            explanation: "Diverse genetic traits increase a population's adaptability to changing conditions.",
            topic: "7.12"
        ),
        Flashcard7(
            question: "Antibiotic resistance",
            answer: "Bacteria evolve to survive antibiotics.",
            explanation: "Overuse of antibiotics drives the evolution of resistant bacterial strains.",
            topic: "7.12"
        ),
        Flashcard7(
            question: "Deleterious traits",
            answer: "Harmful traits that reduce survival.",
            explanation: "Deleterious traits decrease an organism's fitness and reproductive success.",
            topic: "7.12"
        ),
        Flashcard7(
            question: "Adaptive traits",
            answer: "Traits that increase survival and reproduction.",
            explanation: "Adaptive traits enhance fitness, allowing organisms to thrive in their environment.",
            topic: "7.12"
        )



    ]
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["7.1", "7.2", "7.3", "7.4", "7.5", "7.6", "7.7", "7.8", "7.9", "7.10", "7.11", "7.12", "7.13"]
    
    var filteredFlashcards: [Flashcard7] {
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
                        ForEach(["7.1", "7.2", "7.3", "7.4", "7.5", "7.6", "7.7", "7.8", "7.9", "7.10", "7.11", "7.12", "7.13"], id: \.self) { topic in
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

struct Flashcard7: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit7Flashcards()
}
