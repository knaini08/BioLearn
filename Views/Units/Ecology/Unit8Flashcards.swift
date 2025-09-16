//
//  Unit8Flashcards.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct Unit8Flashcards: View {
    let allFlashcards: [Flashcard8] = [
        Flashcard8(
            question: "Communication mechanisms",
            answer: "Visual, audible, tactile, electrical, chemical.",
            explanation: "Organisms use various communication methods to interact with their environment.",
            topic: "8.1"
        ),
        Flashcard8(
            question: "Communication mechanism uses",
            answer: "Indicate dominance, find food, establish territory, ensure reproductive success.",
            explanation: "These mechanisms help organisms navigate their social and ecological environments.",
            topic: "8.1"
        ),
        Flashcard8(
            question: "Innate behaviors",
            answer: "Genetically programmed, instinctive actions.",
            explanation: "Innate behaviors are inherited and occur without prior learning.",
            topic: "8.1"
        ),
        Flashcard8(
            question: "Learned behaviors",
            answer: "Acquired through experience and interaction.",
            explanation: "Learned behaviors are shaped by an organism's interactions with its environment.",
            topic: "8.1"
        ),
        Flashcard8(
            question: "Cooperative behaviors",
            answer: "Working together for mutual benefit.",
            explanation: "Cooperative behaviors enhance survival and reproductive success through collaboration.",
            topic: "8.1"
        ),
        Flashcard8(
            question: "Warning traits",
            answer: "Signal danger or unpalatability.",
            explanation: "Warning traits, like bright colors, deter predators by signaling toxicity or danger.",
            topic: "8.1"
        ),
        Flashcard8(
            question: "Strategies of regulating body temperature & metabolism",
            answer: "Behavioral, physiological, and morphological adaptations.",
            explanation: "Organisms regulate temperature and metabolism through various strategies to survive.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "Metabolic rate",
            answer: "Energy used by an organism per unit of time.",
            explanation: "Metabolic rate determines how much energy an organism consumes to maintain life.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "Net gain in energy",
            answer: "Energy storage or growth.",
            explanation: "Net gain refers to energy accumulated for future use or increased biomass.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "The smaller the organism...",
            answer: "The higher the metabolic rate.",
            explanation: "Smaller organisms typically require more energy per unit of body mass.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "Trophic level",
            answer: "Position in a food chain or web.",
            explanation: "Trophic levels represent the feeding relationships and energy flow through ecosystems.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "Changes in energy availability effect",
            answer: "Impact population size and ecosystem dynamics.",
            explanation: "Fluctuations in energy availability can cause shifts in species abundance and behavior.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "Food chain",
            answer: "Linear sequence of energy transfer.",
            explanation: "A food chain illustrates the flow of energy from one organism to another.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "Food webs",
            answer: "Complex network of interrelated food chains.",
            explanation: "Food webs show how energy flows through interconnected species within an ecosystem.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "Autotrophs",
            answer: "Organisms that produce their own food.",
            explanation: "Autotrophs, like plants, convert sunlight into chemical energy via photosynthesis.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "Heterotrophs",
            answer: "Organisms that consume other organisms.",
            explanation: "Heterotrophs depend on autotrophs or other heterotrophs for energy.",
            topic: "8.2"
        ),
        Flashcard8(
            question: "Population",
            answer: "Group of individuals of the same species.",
            explanation: "A population consists of individuals that live in the same area and interact.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Food availability effect on population",
            answer: "More food supports higher population growth.",
            explanation: "Increased food availability leads to better survival and reproduction rates.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Adaptations to energy availability",
            answer: "Efficiency in energy use and storage.",
            explanation: "Adaptations help organisms maximize energy use for survival and reproduction.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Several factors can affect population growth",
            answer: "Several factors can affect population growth.",
            explanation: "Environmental factors, resources, and interactions influence population dynamics.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Age at reproductive maturity",
            answer: "Age when an organism can reproduce.",
            explanation: "Earlier reproductive maturity can accelerate population growth.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Number of offspring produced",
            answer: "Determines the rate of population growth.",
            explanation: "Higher offspring numbers can lead to faster population expansion.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Frequency of reproduction",
            answer: "How often organisms reproduce.",
            explanation: "Frequent reproduction increases population size over time.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Survivorship of offspring to reproductive maturity",
            answer: "Determines long-term population growth.",
            explanation: "Higher survival rates increase the likelihood of reproductive success.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Population growth equation",
            answer: "dN/dt = B - D.",
            explanation: "The equation describes the rate of population change over time.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "dN",
            answer: "Change in population size.",
            explanation: "dN represents the difference in population size between time intervals.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "dt",
            answer: "Change in time.",
            explanation: "dt represents the time period over which population change is measured.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "B",
            answer: "Birth rate.",
            explanation: "B is the number of births per time period.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "D",
            answer: "Death rate.",
            explanation: "D is the number of deaths per time period.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Exponential growth",
            answer: "Rapid population increase under ideal conditions.",
            explanation: "Exponential growth occurs when resources are unlimited and growth is unrestricted.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "What leads to exponential growth in population?",
            answer: "Unlimited resources and favorable conditions.",
            explanation: "Exponential growth happens when resources are abundant, and competition is minimal.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Exponential growth equation",
            answer: "dN/dt = N*rmax.",
            explanation: "This equation shows the rate of exponential population growth.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "N",
            answer: "Population size.",
            explanation: "N represents the current population number in the exponential growth equation.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "rmax",
            answer: "Maximum per capita growth rate.",
            explanation: "rmax is the highest possible growth rate under ideal conditions.",
            topic: "8.3"
        ),
        Flashcard8(
            question: "Resource availability",
            answer: "Impacts population density.",
            explanation: "Limited resources reduce population density, while abundant resources support higher density.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "Density-dependent factors",
            answer: "Competition, territoriality, disease, predation.",
            explanation: "These factors impact populations more as density increases, affecting survival and reproduction.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "Density-independent factors",
            answer: "Natural disasters.",
            explanation: "These factors affect population size regardless of density, such as hurricanes or wildfires.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "Logistic growth model",
            answer: "Population growth slows as it approaches carrying capacity.",
            explanation: "In the logistic model, growth initially is exponential but slows as resources become limited.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "Carrying capacity",
            answer: "Maximum population size an environment can support.",
            explanation: "Carrying capacity is determined by resource availability and environmental factors.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "Logistic growth equation",
            answer: "dN/dt = (N * rmax)((K-N)/K).",
            explanation: "This equation models population growth with environmental limits and carrying capacity.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "dN",
            answer: "Change in population size.",
            explanation: "dN represents the difference in population size over time.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "dt",
            answer: "Change in time.",
            explanation: "dt represents the time period over which population change is measured.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "N",
            answer: "Population size.",
            explanation: "N represents the number of individuals in the population at a given time.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "K",
            answer: "Carrying capacity.",
            explanation: "K is the maximum population size that the environment can sustainably support.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "rmax",
            answer: "Maximum per capita growth rate.",
            explanation: "rmax is the highest rate of growth that the population can achieve under ideal conditions.",
            topic: "8.4"
        ),
        Flashcard8(
            question: "Community",
            answer: "All species living in an area.",
            explanation: "A community consists of interacting species in a specific habitat.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Species diversity",
            answer: "Variety of species in an area.",
            explanation: "Species diversity includes both species richness and evenness in an ecosystem.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Species composition",
            answer: "Types and abundance of species.",
            explanation: "Species composition refers to the specific species present and their relative abundance.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Simpson's diversity index equation",
            answer: "1 - sum of (n/N)^2.",
            explanation: "This index measures the diversity in a community, accounting for both richness and evenness.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "n",
            answer: "Total number of organisms of a particular species.",
            explanation: "n represents the number of individuals of a given species in the community.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "N",
            answer: "Total number of organisms of all species.",
            explanation: "N represents the total population of all species within the community.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Mutualism",
            answer: "Both species benefit.",
            explanation: "In mutualism, both species involved gain benefits from the interaction.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Commensalism",
            answer: "One species benefits, other is unaffected.",
            explanation: "Commensalism benefits one species while the other is neither helped nor harmed.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Predator-prey",
            answer: "One benefits, the other is harmed.",
            explanation: "Predator-prey interactions involve one species hunting and consuming another.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Parasitism",
            answer: "One benefits, the other is harmed.",
            explanation: "In parasitism, the parasite benefits at the expense of the host.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Trophic cascade",
            answer: "Effects spread through food chain.",
            explanation: "A trophic cascade occurs when changes at one trophic level affect others.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Niche partitioning",
            answer: "Species divide resources to avoid competition.",
            explanation: "Niche partitioning helps species coexist by using different resources or habitats.",
            topic: "8.5"
        ),
        Flashcard8(
            question: "Ecosystem diversity",
            answer: "Related to resilience to environmental changes.",
            explanation: "Greater ecosystem diversity increases resilience to disturbances like climate change.",
            topic: "8.6"
        ),
        Flashcard8(
            question: "Abiotic and biotic factors",
            answer: "Help maintain ecosystem diversity.",
            explanation: "Abiotic and biotic factors interact to support diverse species and ecological functions.",
            topic: "8.6"
        ),
        Flashcard8(
            question: "Dominant predators",
            answer: "Help keep prey populations under control.",
            explanation: "Dominant predators regulate prey populations, maintaining ecological balance.",
            topic: "8.6"
        ),
        Flashcard8(
            question: "Keystone species",
            answer: "Species crucial for ecosystem stability.",
            explanation: "Keystone species have a disproportionate impact on their ecosystem relative to their abundance.",
            topic: "8.6"
        ),
        Flashcard8(
            question: "Adaptation",
            answer: "A species' adjustment to environment.",
            explanation: "Adaptation helps organisms survive by improving fitness in their environment.",
            topic: "8.7"
        ),
        Flashcard8(
            question: "Mutations",
            answer: "Genetic changes affecting traits.",
            explanation: "Mutations introduce genetic variation, which can lead to adaptation or disruption.",
            topic: "8.7"
        ),
        Flashcard8(
            question: "Invasive species",
            answer: "Non-native species harming ecosystems.",
            explanation: "Invasive species can outcompete native species and disrupt ecosystem balance.",
            topic: "8.7"
        ),
        Flashcard8(
            question: "Distribution",
            answer: "Changes over time.",
            explanation: "Species distribution can shift due to environmental changes, competition, or migration.",
            topic: "8.7"
        ),
        Flashcard8(
            question: "Human impact",
            answer: "Urbanization, deforestation, erosion, extinction, pollution, climate.",
            explanation: "Human activities like urbanization and pollution disrupt ecosystems and biodiversity.",
            topic: "8.7"
        )



    ]
    
    @Environment(\.colorScheme) var colorScheme
    @State private var currentIndex = 0
    @State private var isFlipped = false
    @State private var isExplanationVisible = false
    @State private var selectedTopics: Set<String> = ["8.1", "8.2", "8.3", "8.4", "8.5", "8.6", "8.7"]
    
    var filteredFlashcards: [Flashcard8] {
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
                        ForEach(["8.1", "8.2", "8.3", "8.4", "8.5", "8.6", "8.7"], id: \.self) { topic in
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

struct Flashcard8: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
    let explanation: String
    let topic: String
}

#Preview {
    Unit8Flashcards()
}
