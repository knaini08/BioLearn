//
//  ContentView.swift
//  BioTutor
//
//  Created by Kaveh Naini on 1/21/25.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("OnboardingComplete") var OnboardingComplete: Bool = false
    @State private var selectedTab = 0
    @State private var showAIIntro = false
    @AppStorage("subscriptionLevel") var subscriptionLevel: String = "Free" // "Plus" or "Pro"
    
    // Paywall state (persisted)
    
    @Environment(\.colorScheme) var colorScheme
    
    var backgroundColor: Color {
        colorScheme == .dark ? Color.gray.opacity(0.2) : Color.black.opacity(0.9)
    }
    
    var body: some View {
      if OnboardingComplete {
            
            ZStack {
                backgroundColor
                    .ignoresSafeArea()
                
                VStack {
                    TabView(selection: $selectedTab) {
                        LessonsView()
                            .tabItem {
                                Label("Lessons", systemImage: "menucard")
                            }
                            .tag(0)
                        
                        if subscriptionLevel != "Free" {
                            PracticeTestView()
                                .tabItem {
                                    Label("Practice Tests", systemImage: "pencil.and.list.clipboard")
                                }
                                .tag(1)
                        } else {
                            LockedView(featureName: "Practice Tests")
                                .tabItem {
                                    Label("Practice Tests", systemImage: "lock")
                                }
                                .tag(1)
                        }
                        
                        
                        CreateView()
                            .tabItem {
                                Label("AI", systemImage: "sparkles")
                            }
                            .tag(3)
                        
                        ProgressSwiftUIView()
                            .tabItem {
                                Label("Progress", systemImage: "chart.bar.fill")
                            }
                            .tag(2)
                        
                        AboutView()
                            .tabItem {
                                Label("About", systemImage: "info.circle")
                            }
                            .tag(4)
                    }
                    .onChange(of: selectedTab) { newTab in
                        if newTab == 3 {
                            withAnimation {
                                showAIIntro = true
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                                withAnimation {
                                    showAIIntro = false
                                }
                            }
                        }
                    }
                    .toolbarBackground(Color.black, for: .tabBar)
                }
                
                // ANIMATION OVERLAY
                if showAIIntro {
                    ZStack {
                        backgroundColor.ignoresSafeArea()
                        VStack(spacing: 10) {
                            Image(systemName: "sparkles")
                                .font(.system(size: 120))
                                .foregroundStyle(.white)
                            Text("BioLearn AI")
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(.white)
                        }
                        .transition(.opacity)
                    }
                    .zIndex(1)
                    .animation(.easeOut(duration: 0.6), value: showAIIntro)
                }
            }
        }
        else {
            OnboardingFlowView()
        }
    }
}

#Preview {
    ContentView()
}
struct OnboardingFlowView: View {
    @AppStorage("OnboardingComplete") var OnboardingComplete: Bool = false
    @State private var step = 0
    @State private var selectedOption: String? = nil
    
    let steps: [(question: String, options: [String])] = [
        ("How experienced are you with Biology?", ["Beginner", "Intermediate", "Advanced", "Expert"]),
        ("Are you currently taking a biology class?", ["Yes", "No"]),
        ("What level of school are you in?", ["Middle School", "High School", "College", "Other"])
    ]

    var body: some View {
        ZStack {
            Color(red: 0.12, green: 0.24, blue: 0.18)
                .ignoresSafeArea()

            VStack(spacing: 30) {
                Spacer()
                if step < steps.count {
                    Text(steps[step].question)
                        .font(.title2.bold())
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()

                    VStack(spacing: 15) {
                        ForEach(steps[step].options, id: \.self) { option in
                            Button(action: {
                                selectedOption = option
                            }) {
                                Text(option)
                                    .font(.body)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(selectedOption == option ? Color.accentColor.opacity(0.8) : Color.gray.opacity(0.3))
                                    .cornerRadius(10)
                            }
                        }
                    }

                    if selectedOption != nil {
                        Button("Continue") {
                            step += 1
                            selectedOption = nil
                        }
                        .buttonStyle(.borderedProminent)
                        .padding(.top)
                    }
                } else if step == steps.count {
                    SampleQuestionView {
                        step += 1
                    }
                } else {
                    UpsellView {
                        OnboardingComplete = true
                    }
                }
                Spacer()
            }
            .padding()
        }
    }
}
struct SampleQuestionView: View {
    @State private var selectedAnswer: String? = nil
        let question = "What is the powerhouse of the cell?"
        let options = ["Nucleus", "Mitochondria", "Ribosome", "Chloroplast"]
        let correctAnswer = "Mitochondria"
        let explanation = "Mitochondria produce energy (ATP) for the cell."
        
        var onContinue: () -> Void

        var body: some View {
            ZStack {
                Color(red: 0.12, green: 0.24, blue: 0.18)
                    .ignoresSafeArea()

                VStack(spacing: 25) {
                    Text("Sample Question")
                        .font(.title)
                        .foregroundStyle(.accent)

                    VStack(alignment: .leading, spacing: 15) {
                        Text(question)
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.white)

                        ForEach(options, id: \.self) { option in
                            Button(action: {
                                if selectedAnswer == nil {
                                    selectedAnswer = option
                                }
                            }) {
                                Text(option)
                                    .font(.body)
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(
                                        selectedAnswer == nil
                                            ? Color.gray.opacity(0.2)
                                            : option == correctAnswer
                                                ? Color.green.opacity(0.7)
                                                : option == selectedAnswer
                                                    ? Color.red.opacity(0.7)
                                                    : Color.gray.opacity(0.2)
                                    )
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                            }
                            .disabled(selectedAnswer != nil)
                        }
                    }

                    if selectedAnswer != nil {
                        Text(explanation)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(10)
                            .padding(.top)
                        
                        Button("Continue") {
                            onContinue()
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
                .padding()
            }
        }
    }
struct UpsellView: View {
    var onFinish: () -> Void
    @State private var showPaywall = false

    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                Text("Unlock More with BioLearn+")
                    .font(.largeTitle.bold())

                VStack(alignment: .leading, spacing: 15) {
                    Label("✅ Access to all practice tests", systemImage: "pencil.and.list.clipboard")
                    Label("✅ AI flashcard & quiz generation", systemImage: "sparkles")
                    Label("✅ 50 AI uses/day with Pro+", systemImage: "bolt.fill")
                    Label("✅ Support a student-built app", systemImage: "heart.fill")
                }
                .font(.title3)

                Button("Subscribe to BioLearn+") {
                    showPaywall = true
                }
                .buttonStyle(.borderedProminent)

                Button("Continue") {
                    onFinish()
                }
                .foregroundColor(.gray)
            }
            .padding()
        }
        .sheet(isPresented: $showPaywall) {
            PaywallView()
        }
    }
}


struct LockedView: View {
    var featureName: String
    @State private var showPaywall = false

    var body: some View {
        ZStack {
            Color(red: 0.12, green: 0.24, blue: 0.18)
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Image(systemName: "lock.shield")
                    .font(.system(size: 60))
                    .foregroundColor(.gray)
                Text("\(featureName) is part of BioLearn+")
                    .font(.title2.bold())
                Text("Unlock this feature with a subscription.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Button("See Plans") {
                    showPaywall = true
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .sheet(isPresented: $showPaywall) {
            PaywallView()
        }
    }
}

struct PaywallView: View {
    @StateObject private var manager = PurchaseManager.shared
    @State private var voucherCode = ""
    @State private var voucherMessage = ""
    
    // Replace these with a secure remote list in production
    let validVouchers = ["REY302035", "WME320493", "DSM239234", "LSD203944", "BIO203320", "HID023490", "MIE023495", "HEE034701", "MDI092343", "DEE019433", "DJE913834", "ASE293084", "AHH913403", "MDK901034", "WOW030301", "MON913743", "AHD639143", "MDI398310", "MEI030183", "EYD638203", "MIE639233", "MOE036753"]

    var body: some View {
        VStack(spacing: 30) {
            Text("Unlock BioLearn+")
                .font(.largeTitle.bold())

            ForEach(manager.products) { product in
                VStack(spacing: 10) {
                    Text(product.displayName)
                        .font(.title2.bold())
                    Text(product.description)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Button("Subscribe for \(product.displayPrice)") {
                        Task {
                            await manager.purchase(product)
                        }
                    }
                    .buttonStyle(.borderedProminent)
                }
            }

            Divider()

            VStack(spacing: 12) {
                Text("Have a voucher?")
                    .font(.headline)

                TextField("Enter code", text: $voucherCode)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.center)

                Button("Redeem") {
                    redeemVoucher()
                }
                .buttonStyle(.bordered)

                Text(voucherMessage)
                    .foregroundColor(.green)
                    .font(.caption)
            }

            Divider()

            Button("Restore Purchases") {
                Task {
                    await manager.restore()
                }
            }
            .font(.caption)
        }
        .task {
            await manager.loadProducts()
        }
        .padding()
    }

    func redeemVoucher() {
        let code = voucherCode.uppercased().trimmingCharacters(in: .whitespacesAndNewlines)

        if validVouchers.contains(code) {
            UserDefaults.standard.set("Pro", forKey: "subscriptionLevel")
            manager.purchasedProductID = "com.biolearn.pro"
            voucherMessage = "✅ Voucher accepted! Unlimited Pro+ access unlocked."
        } else {
            voucherMessage = "❌ Invalid voucher code."
        }
    }
}
