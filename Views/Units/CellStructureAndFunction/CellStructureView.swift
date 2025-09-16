//
//  CellStructureView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/27/25.
//

import SwiftUI

struct CellStructureView: View {
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
                                Unit2Flashcards()
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
                              UnitPracticeQuestions(unit: 2)
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
                            NotesView(noteId: "2.1")
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
                                        Text("2.1 Cell Structure - Subcellular Components")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "2.2")
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
                                        Text("2.2 Cell Structure and Function")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "2.3")
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
                                        Text("2.3 Cell Size")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "2.4")
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
                                        Text("2.4 Plasma Membranes")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                        
                                    }
                                )
                            
                            
                            
                            
                        }
                        NavigationLink {
                            NotesView(noteId: "2.5")
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
                                        Text("2.5 Membrane Permeability")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "2.6")
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
                                        Text("2.6 Membrane Transport")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "2.7")
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
                                        Text("2.7 Faciliated Diffusion")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "2.8")
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
                                        Text("2.8 Tonicity and Osmoregulation")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "2.9")
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
                                        Text("2.9 Mechanisms of Transport")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "2.10")
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
                                        Text("2.10 Cell Compartmentalzation")
                                            .foregroundStyle(.black)
                                            .font(Font.custom("Impact", size: 20))
                                       
                                    }
                                )
                        
                                
                                
                               
                        }
                        NavigationLink {
                            NotesView(noteId: "2.11")
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
                                        Text("2.11 Origins of Cell Compartmentalization")
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
    CellStructureView()
}
