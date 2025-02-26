//
//
// TabView-AboutMe
// FunFactsView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct FunFactsView: View {
    
    // MARK: - @State Properties
    
    @State private var funFact = ""
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle).fontWeight(.bold)
            Spacer()
            
            Text(funFact)
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
                .frame(minHeight: 400)
            
            Spacer()
                
            Button("Show Random Fact") {
                funFact = information.funFacts.randomElement()!
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    FunFactsView()
}
