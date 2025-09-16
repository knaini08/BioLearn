//
//  ProgressView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/22/25.
//

import SwiftUI

struct ProgressSwiftUIView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var showPaywall = false
    // Use @AppStorage to store and retrieve values persistently
    @AppStorage("allTotalQuestionsAnswered") private var allTotalQuestionsAnswered: Int = 0
    @AppStorage("allTotalQuestionsCorrect") private var allTotalQuestionsCorrect: Int = 0
    @AppStorage("AcorrectAnswers_1") private var unit1correctanswers: Int = 0
    @AppStorage("AquestionsAnswered_1") private var unit1questionsanswered: Int = 0
    @AppStorage("AcorrectAnswers_2") private var unit2correctanswers: Int = 0
    @AppStorage("AquestionsAnswered_2") private var unit2questionsanswered: Int = 0
    @AppStorage("AcorrectAnswers_3") private var unit3correctanswers: Int = 0
    @AppStorage("AquestionsAnswered_3") private var unit3questionsanswered: Int = 0
    @AppStorage("AcorrectAnswers_4") private var unit4correctanswers: Int = 0
    @AppStorage("AquestionsAnswered_4") private var unit4questionsanswered: Int = 0
    @AppStorage("AcorrectAnswers_5") private var unit5correctanswers: Int = 0
    @AppStorage("AquestionsAnswered_5") private var unit5questionsanswered: Int = 0
    @AppStorage("AcorrectAnswers_6") private var unit6correctanswers: Int = 0
    @AppStorage("AquestionsAnswered_6") private var unit6questionsanswered: Int = 0
    @AppStorage("AcorrectAnswers_7") private var unit7correctanswers: Int = 0
    @AppStorage("AquestionsAnswered_7") private var unit7questionsanswered: Int = 0
    @AppStorage("AcorrectAnswers_8") private var unit8correctanswers: Int = 0
    @AppStorage("AquestionsAnswered_8") private var unit8questionsanswered: Int = 0
    // Computed property for accuracy calculation
    var accuracy: String {
        allTotalQuestionsAnswered > 0 ? "\(allTotalQuestionsCorrect)/\(allTotalQuestionsAnswered) (\(Int(Double(allTotalQuestionsCorrect) / Double(allTotalQuestionsAnswered) * 100))%)" : "0%"
    }
    var unit1ccuracy: String {
        unit1questionsanswered > 0 ? "\(unit1correctanswers)/\(unit1questionsanswered) (\(Int(Double(unit1correctanswers) / Double(unit1questionsanswered) * 100))%)" : "0%"
    }
    var unit2ccuracy: String {
        unit2questionsanswered > 0 ? "\(unit2correctanswers)/\(unit2questionsanswered) (\(Int(Double(unit2correctanswers) / Double(unit2questionsanswered) * 100))%)" : "0%"
    }
    var unit3ccuracy: String {
        unit3questionsanswered > 0 ? "\(unit3correctanswers)/\(unit3questionsanswered) (\(Int(Double(unit3correctanswers) / Double(unit3questionsanswered) * 100))%)" : "0%"
    }
    var unit4ccuracy: String {
        unit4questionsanswered > 0 ? "\(unit4correctanswers)/\(unit4questionsanswered) (\(Int(Double(unit4correctanswers) / Double(unit4questionsanswered) * 100))%)" : "0%"
    }
    var unit5ccuracy: String {
        unit5questionsanswered > 0 ? "\(unit5correctanswers)/\(unit5questionsanswered) (\(Int(Double(unit5correctanswers) / Double(unit5questionsanswered) * 100))%)" : "0%"
    }
    var unit6ccuracy: String {
        unit6questionsanswered > 0 ? "\(unit6correctanswers)/\(unit6questionsanswered) (\(Int(Double(unit6correctanswers) / Double(unit6questionsanswered) * 100))%)" : "0%"
    }
    var unit7ccuracy: String {
        unit7questionsanswered > 0 ? "\(unit7correctanswers)/\(unit7questionsanswered) (\(Int(Double(unit7correctanswers) / Double(unit7questionsanswered) * 100))%)" : "0%"
    }
    var unit8ccuracy: String {
        unit8questionsanswered > 0 ? "\(unit8correctanswers)/\(unit8questionsanswered) (\(Int(Double(unit8correctanswers) / Double(unit8questionsanswered) * 100))%)" : "0%"
    }
    var items: [(String, String)] {
        [
            ("Practice Questions Answered:", "\(allTotalQuestionsAnswered)"),
            ("Chemistry of LIfe:", unit1ccuracy),
            ("Cell Structure:", unit2ccuracy),
            ("Cell Energetics:", unit3ccuracy),
            ("Cell Communications:", unit4ccuracy),
            ("Heredity:", unit5ccuracy),
            ("Gene Expression:", unit6ccuracy),
            ("Natural Selection:", unit7ccuracy),
            ("Ecology:", unit8ccuracy),
            ("Total Accuracy:", accuracy)
        ]
    }
    
    var body: some View {
        ZStack {
            Color(red: 0.12, green: 0.24, blue: 0.18)
                .ignoresSafeArea()
            VStack {
                Image("PurchaseImage")
                    .resizable()
                    .frame(width: 164, height: 60)
                    .onTapGesture {
                                        showPaywall = true
                                    }
                
                ScrollView {
                    VStack(spacing: 18) {
                        ForEach(items, id: \.0) { item in
                            HStack {
                                Text(item.0)
                                    .font(.system(size: 18, weight: .bold))
                                    .frame(alignment: .leading)
                                Spacer()
                                Text(item.1)
                                    .font(.system(size: 18))
                            }
                            .padding(.horizontal)
                            
                            Rectangle()
                                .fill(Color.accentColor)
                                .frame(width: UIScreen.main.bounds.width - 35, height: 1)
                        }
                    }
                    .padding(.top, 20)
                }
            }
            .sheet(isPresented: $showPaywall) {
                        PaywallView()
                    }
        }
    }
}
#Preview {
    ProgressSwiftUIView()
}
