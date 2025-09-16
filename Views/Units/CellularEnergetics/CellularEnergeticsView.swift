//
//  CellularEnergeticsView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct CellularEnergeticsView: View {
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
                                Unit3Flashcards()
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
                                UnitPracticeQuestions(unit: 3)
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
                            NotesView(noteId: "3.1")
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
                                        Text("3.1 Enzyme Structure")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "3.2")
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
                                        Text("3.2 Enzyme Catalysis")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "3.3")
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
                                        Text("3.3 Impacts on Enzyme function")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "3.4")
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
                                        Text("3.4 Cellular Energy")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "3.5")
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
                                        Text("3.5 Photosynthesis")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "3.6")
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
                                        Text("3.6 Cellular Respiration")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "3.7")
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
                                        Text("3.7 Fitness")
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
    CellularEnergeticsView()
}
