//
//  PracticeTestView2.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/28/25.
//
import SwiftUI
import Foundation

struct UnitPracticeTest: View {
    let unitNumber: Int
    @Environment(\.colorScheme) var colorScheme
    @State private var selectedChoice: String? = nil
    @State private var showExplanation = false
    @State private var questionIndex: Int
    @State private var attemptedQuestions: [TestQuestion]
    @State private var totalCorrect: Int
    @State private var totalAnswered: Int
    @State private var testCompleted = false
    
    init(unitNumber: Int) {
        self.unitNumber = unitNumber
        _questionIndex = State(initialValue: UserDefaults.standard.integer(forKey: "questionIndex_\(unitNumber)"))
        print("loading data ")
        _attemptedQuestions = State(initialValue: UserDefaults.standard.loadTestQuestions(forKey: "attemptedQuestions_\(unitNumber)"))
        _totalCorrect = State(initialValue: UserDefaults.standard.integer(forKey: "totalCorrect_\(unitNumber)"))
        _totalAnswered = State(initialValue: UserDefaults.standard.integer(forKey: "totalAnswered_\(unitNumber)"))
        _testCompleted = State(initialValue: UserDefaults.standard.bool(forKey: "testCompleted_\(unitNumber)"))
    }
    var availableQuestions: [TestQuestion] {
        allTestQuestions.filter { $0.unit == unitNumber && !attemptedQuestions.contains($0) }
    }

    var body: some View {
        ZStack {
            backgroundLayer
            VStack {
                if availableQuestions.isEmpty {
                    finalScoreScreen
                    
                } else {
                    progressTracker
                    if showExplanation {
                        ScrollView {
                            questionDisplay
                            explanationSection
                        }
                    } else {
                        ScrollView {
                            questionDisplay
                            explanationSection
                        }
                    }
                    Spacer()
                }
            }
            .onAppear(perform: loadProgress)
            .padding()
            

        }
    }

    private var backgroundLayer: some View {
        Color(red: 0.12, green: 0.24, blue: 0.18)
            .ignoresSafeArea()
    }

    private var progressTracker: some View {
        HStack {
            Text("\(totalCorrect)/\(totalAnswered) (\(totalAnswered == 0 ? 0 : Int(Double(totalCorrect) / Double(totalAnswered) * 100))%)")
                .font(.system(size: 14))
                .foregroundColor(.accentColor)
                .bold()
            Spacer()
            resetProgressButton
            nextQuestionButton
        }
        .padding()
    }

    private var nextQuestionButton: some View {
        Button(action: {
            advanceToNextQuestion()
            saveProgress()
        }) {
            Text("Next")
                .padding()
                .frame(width: 80)
                .background(selectedChoice != nil ? Color.blue : Color.gray.opacity(0.5))
                .cornerRadius(10)
                .foregroundColor(.white)
        }
        .disabled(selectedChoice == nil)
    }

    private var questionDisplay: some View {
        Group {
            if !availableQuestions.isEmpty && questionIndex < availableQuestions.count {
                VStack(alignment: .leading, spacing: 10) {
                    Text(availableQuestions[questionIndex].question)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                    
                    ForEach(availableQuestions[questionIndex].options, id: \.self) { choice in
                        choiceButton(choice)
                    }
                }
                .padding()
            } else {
                Text("No more questions available.")
                    .font(.title2)
                    .padding()
            }
        }
    }


    private func choiceButton(_ choice: String) -> some View {
        Button(action: {
            handleChoiceSelection(choice)
            saveProgress()
        }) {
            HStack {
                Text(choice)
                    .font(.body)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(
                        selectedChoice == choice
                            ? (choice == availableQuestions[questionIndex].correctAnswer
                                ? Color.green.opacity(0.7)
                                : Color.red.opacity(0.7))
                            : (showExplanation && choice == availableQuestions[questionIndex].correctAnswer
                                ? Color.green.opacity(0.7)
                                : Color.gray.opacity(0.2))
                    )
                    .cornerRadius(10)
                    .foregroundStyle(Color.white)
            }
        }
        .disabled(selectedChoice != nil)
    }

    private func handleChoiceSelection(_ choice: String) {
        if selectedChoice == nil {
            selectedChoice = choice

            var currentQuestion = availableQuestions[questionIndex]
            currentQuestion.selectedAnswer = choice  // Store user's choice
            attemptedQuestions.append(currentQuestion)  // Save modified question

            if choice == currentQuestion.correctAnswer {
                totalCorrect += 1
            }
            totalAnswered += 1
            saveProgress()

            if choice != currentQuestion.correctAnswer {
                showExplanation = true
            }
        }
    }

    private var explanationSection: some View {
        Group {
            if showExplanation {
                Text(availableQuestions[questionIndex].explanation)
                    .font(.body)
                    .foregroundColor(.primary)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.top)
            }
        }
    }

    private var finalScoreScreen: some View {
        ScrollView {
            VStack {
                Text("Final Score")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                Text("\(totalCorrect)/\(totalAnswered) Correct")
                    .font(.title)
                    .foregroundColor(.blue)
                    .padding(.bottom)
                
                VStack {
                               ForEach(Array(Set(attemptedQuestions.map { $0.id })), id: \.self) { questionID in
                                   if let question = attemptedQuestions.first(where: { $0.id == questionID }) {
                                       questionView(question)
                                   }
                               }
                           }


                resetProgressButton
                
            }
            .onAppear(perform: completethetest)
            .padding()
        }
    }
    
    private func completethetest() {
        testCompleted = true
    }
    /// Displays a question and its answer choices.
    private func questionView(_ question: TestQuestion) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(question.question)
                .font(.headline)

            ForEach(question.options, id: \.self) { choice in
                answerChoiceView(choice, for: question)
            }
        }
        .padding()
    }

    /// Displays a single answer choice with appropriate colors.
    private func answerChoiceView(_ choice: String, for question: TestQuestion) -> some View {
        HStack {
            Text(choice)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(answerColor(for: choice, question: question))
                .cornerRadius(10)
                .foregroundStyle(Color.white)
        }
    }

    /// Determines the background color for an answer choice.
    private func answerColor(for choice: String, question: TestQuestion) -> Color {
        if choice == question.correctAnswer {
            return Color.green.opacity(0.7)  // Correct answer is green
        } else if choice == question.selectedAnswer {
            return Color.red.opacity(0.7)    // Only the user's incorrect selection is red
        } else {
            return Color.gray.opacity(0.2)   // Unselected incorrect answers are gray
        }
    }


    private var resetProgressButton: some View {
        Button(action: resetProgress) {
            Text("Retake Test")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }

    private func advanceToNextQuestion() {
        guard !availableQuestions.isEmpty else { return } // Prevents index out of range
        
        let currentQuestion = availableQuestions[questionIndex]
           attemptedQuestions.append(currentQuestion)
        
        if questionIndex >= availableQuestions.count - 1 {
            questionIndex = 0 // Reset index when reaching the end

        } else {
            questionIndex += 1
        }

        selectedChoice = nil
        showExplanation = false
    }


    private func saveProgress() {
        UserDefaults.standard.saveTestQuestions(attemptedQuestions, forKey: "attemptedQuestions_\(unitNumber)")
        UserDefaults.standard.set(totalCorrect, forKey: "totalCorrect_\(unitNumber)")
        UserDefaults.standard.set(totalAnswered, forKey: "totalAnswered_\(unitNumber)")
        UserDefaults.standard.set(questionIndex, forKey: "questionIndex_\(unitNumber)")
        UserDefaults.standard.set(testCompleted, forKey: "testCompleted_\(unitNumber)")
        print("saving progress")
    }
    
    private func loadProgress() {
        totalCorrect = UserDefaults.standard.integer(forKey: "totalCorrect_\(unitNumber)")
        attemptedQuestions = UserDefaults.standard.loadTestQuestions(forKey: "attemptedQuestions_\(unitNumber)")
        totalAnswered = UserDefaults.standard.integer(forKey: "totalAnswered_\(unitNumber)")
        testCompleted = UserDefaults.standard.bool(forKey: "testCompleted_\(unitNumber)")
  
    }

    private func resetProgress() {
        questionIndex = 0
        selectedChoice = nil
        showExplanation = false
        attemptedQuestions = []
        totalCorrect = 0
        totalAnswered = 0
        saveProgress()
    }
}
extension UserDefaults {
    func saveTestQuestions(_ questions: [TestQuestion], forKey key: String) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(questions) {
            set(encoded, forKey: key)
        }
    }

    func loadTestQuestions(forKey key: String) -> [TestQuestion] {
        if let savedData = data(forKey: key) {
            let decoder = JSONDecoder()
            if let loadedQuestions = try? decoder.decode([TestQuestion].self, from: savedData) {
                return loadedQuestions
            }
        }
        return []
    }
}

#Preview {
    UnitPracticeTest(unitNumber: 3)
}
