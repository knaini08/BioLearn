//
//  CreateView 2.swift
//  BioTutor
//
//  Created by Kaveh Naini on 7/14/25.
//


//

import SwiftUI

struct AboutView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var showPaywall = false
    var body: some View {
        ZStack {
            Color(red: 0.12, green: 0.24, blue: 0.18)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 16) {
                    Image("PurchaseImage")
                        .resizable()
                        .frame(width: 164, height: 60)
                        .onTapGesture {
                                            showPaywall = true
                                        }
                    
                    Text("Contact Us")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("https://knaini08.github.io/BioLearn/")
                        .font(.callout)
                        .foregroundStyle(Color.white)
                        .underline()
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 5)
                    Text("About BioLearn")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("BioLearn was developed by a high school student who earned a 5 on the AP Biology exam, with the goal of making simple biology concepts easier and more accessible for everyone.")
                        
                        Text("This app is a on-the-go study tool designed for students, whether you’re cramming before a test or brushing up on key concepts. All core features work are free and work offline, so even if you’re on a plane or a long bus ride, you can still study.")
                        
                        Text("The AI features require a stable internet connection and a subscription to BioLearn+ in order to keep the app running. Everything else is always available, anytime, anywhere.")
                        
                        Text("Thank you for using BioLearn!")
                    }
                    .font(.title3)
                    .padding()
                    .background(Color.gray.opacity(0.15))
                    .cornerRadius(16)
                    .padding(.horizontal)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                }
                .sheet(isPresented: $showPaywall) {
                            PaywallView()
                        }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    AboutView()
}
