//
//  LessonsView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/22/25.
//

import SwiftUI

struct LessonsView: View {
    let accentUIColor = UIColor(Color.accentColor)
    @Environment(\.colorScheme) var colorScheme
    @State private var showPaywall = false
    let topics: [(title: String, icon: String, destination: AnyView)] = [
        ("Chemistry of Life", "flask", AnyView(ChemistryOfLifeView2())),
        ("Cell Structure & Function", "tablecells", AnyView(CellStructureView())),
        ("Cell Energetics", "bolt.fill", AnyView(CellularEnergeticsView())),
        ("Cell Communication", "arrow.triangle.2.circlepath", AnyView(CellCommsView())),
        ("Heredity", "arrow.branch", AnyView(HeredityView())),
        ("Gene Expression & Regulation", "slider.horizontal.3", AnyView(GeneExpressionView())),
        ("Natural Selection", "leaf.fill", AnyView(NaturalSelectionView())),
        ("Ecology", "globe.americas.fill", AnyView(EcologyView())),
        ("Photosynthesis", "sun.max.fill", AnyView(PhotosynthesisView())),
        ("Cellular Respiration", "lungs.fill", AnyView(CellularRespirationView()))
    ]

    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.12, green: 0.24, blue: 0.18) // #1F3D2B

                    .ignoresSafeArea()

                VStack {
                    Image("PurchaseImage")
                        .resizable()
                        .frame(width: 164, height: 60)
                        .onTapGesture {
                            showPaywall = true

                        }
                    ScrollView {
                        VStack {
                            ForEach(0..<topics.count/2 + topics.count%2, id: \.self) { rowIndex in
                                HStack {
                                    ForEach(0..<2) { colIndex in
                                        let index = rowIndex * 2 + colIndex
                                        if index < topics.count {
                                            let topic = topics[index]
                                            NavigationLink(destination: topic.destination) {
                                                RoundedRectangle(cornerRadius: 12)
                                                    .fill(LinearGradient(
                                                        gradient: Gradient(colors: [Color.green.opacity(0.8), Color.mint.opacity(0.8)]),
                                                        startPoint: .topLeading,
                                                        endPoint: .bottomTrailing
                                                    ))
                                                    .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 106)
                                                    .shadow(color: .black.opacity(0.6), radius: 6, x: 0, y: 4)
                                                    .padding(5)
                                                    .overlay(
                                                        VStack(spacing: 6) {
                                                            Image(systemName: topic.icon)
                                                                .foregroundStyle(.black)
                                                                .font(.system(size: 22))
                                                            Text(topic.title)
                                                                .font(Font.custom("Impact", size: 18))
                                                                .multilineTextAlignment(.center)
                                                                .foregroundStyle(.black)
                                                                .padding(.horizontal, 2)
                                                        }
                                                        .padding()
                                                    )
                                            }
                                        } else {
                                            Spacer()
                                                .frame(width: UIScreen.main.bounds.width / 2 - 30)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                .sheet(isPresented: $showPaywall) {
                            PaywallView()
                        }
            }
        }
    }
}

#Preview {
    LessonsView()
}
