//
//  PracticeTestView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/22/25.
//

import SwiftUI
class ScoreManager: ObservableObject {
    @Published var finalScore: String = ""
}

struct PracticeTestView: View {
    let masteryTests: [(name: String, questions: Int, unit: Int)] = [
        ("Chemistry of Life", 39, 1),
        ("Cell Structure", 39, 2),
        ("Cell Energetics", 36, 3),
        ("Cell Comms & Cycle", 32, 4),
        ("Heredity", 29, 5),
        ("Gene Expression", 30, 6),
        ("Natural Selection", 29, 7),
        ("Ecology", 35, 8)
    ]
    @EnvironmentObject var scoreManager: ScoreManager
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.12, green: 0.24, blue: 0.18)
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack(spacing: 24) {
                        ForEach(masteryTests, id: \.name) { test in
                            NavigationLink {
                                UnitPracticeTest(unitNumber: test.unit)
                            } label : {
                                HStack {
                                    Text("\(test.name) (\(test.questions)q)")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    Spacer()
                                    Text("Score:")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(maxWidth: .infinity, minHeight: 50)
                                .background(Color.accentColor)
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                            }
                        }
                    }
                    .padding(.top, 16)
                }
            }
            .navigationTitle("Practice Tests")
        }
    }
}


#Preview {
    PracticeTestView()
}
