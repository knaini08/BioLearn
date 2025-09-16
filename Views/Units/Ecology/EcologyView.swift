//
//  EcologyView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct EcologyView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var showPaywall = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.12, green: 0.24, blue: 0.18)
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        Image("PurchaseImage")
                            .resizable()
                            .frame(width: 164, height: 60)
                            .onTapGesture {
                                                showPaywall = true
                                            }
                        HStack {
                            NavigationLink {
                                Unit8Flashcards()
                            } label: {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(LinearGradient(
                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                                    .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 106)
                                    .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                                    .padding(5)
                                    .overlay(
                                        Text("Flashcards")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                    )
                                
                                
                                
                                
                            }
                            NavigationLink {
                                UnitPracticeQuestions(unit: 8)
                            } label: {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(LinearGradient(
                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                                    .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 106)
                                    .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                                    .padding(5)
                                    .overlay(
                                        VStack {
                                            Text("Practice")
                                                .foregroundStyle(.black)
                                                .font(Font.custom("Impact", size: 20))
                                            Text("Questions")
                                                .foregroundStyle(.black)
                                                .font(Font.custom("Impact", size: 20))
                                        }
                                    )
                                
                                
                                
                                
                            }
                            
                        }
                        Text("Notes")
                            .font(Font.custom("Impact", size: 40))
                            .foregroundStyle(Color.white)
                        NavigationLink {
                            NotesView(noteId: "8.1")
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(
                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                                .frame(width: UIScreen.main.bounds.width - 60, height: 106)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                                .padding(5)
                                .overlay(
                                    VStack {
                                        Text("8.1 Responses to the Environment")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "8.2")
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(
                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                                .frame(width: UIScreen.main.bounds.width - 60, height: 106)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                                .padding(5)
                                .overlay(
                                    VStack {
                                        Text("8.2 Energy Flow Through Ecosystems")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "8.3")
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(
                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                                .frame(width: UIScreen.main.bounds.width - 60, height: 106)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                                .padding(5)
                                .overlay(
                                    VStack {
                                        Text("8.3 Population Ecology")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "8.4")
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(
                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                                .frame(width: UIScreen.main.bounds.width - 60, height: 106)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                                .padding(5)
                                .overlay(
                                    VStack {
                                        Text("8.4 Effect of Density of Populations")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "8.5")
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(
                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                                .frame(width: UIScreen.main.bounds.width - 60, height: 106)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                                .padding(5)
                                .overlay(
                                    VStack {
                                        Text("8.5 Community Ecology")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "8.6")
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(
                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                                .frame(width: UIScreen.main.bounds.width - 60, height: 106)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                                .padding(5)
                                .overlay(
                                    VStack {
                                        Text("8.6 Biodiversity")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "8.7")
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(
                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ))
                                .frame(width: UIScreen.main.bounds.width - 60, height: 106)
                                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 5)
                                .padding(5)
                                .overlay(
                                    VStack {
                                        Text("8.7 Disruptions to Ecosystems")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        Spacer()
                    }
                    .sheet(isPresented: $showPaywall) {
                                PaywallView()
                            }
                }
            }
        }
    }
}

#Preview {
    EcologyView()
}
