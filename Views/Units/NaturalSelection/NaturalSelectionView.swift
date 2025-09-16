//
//  NaturalSelectionView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct NaturalSelectionView: View {
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
                                Unit7Flashcards()
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
                                UnitPracticeQuestions(unit: 7)
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
                            NotesView(noteId: "7.1")
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
                                        Text("7.1 Intro to Natural Selection")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "7.2")
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
                                        Text("7.2 Natural Selection")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "7.3")
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
                                        Text("7.3 Artificial Selection")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "7.4")
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
                                        Text("7.4 Population Genetics")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "7.5")
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
                                        Text("7.5 Hardy-Weinberg Equilibrium")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "7.6")
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
                                        Text("7.6 Evidence for Evolution")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "7.7")
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
                                        Text("7.7 Common Ancestry")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "7.8")
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
                                        Text("7.8 Continuing Evolution")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "7.9")
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
                                        Text("7.9 Phylogeny")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "7.10")
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
                                        Text("7.10 Speciation")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "7.11")
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
                                        Text("7.11 Extinction")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "7.12")
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
                                        Text("7.12 Variations in Populations")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "7.13")
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
                                        Text("7.13 Origins of Life on Earth")
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
    NaturalSelectionView()
}
