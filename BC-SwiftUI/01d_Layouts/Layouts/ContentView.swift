//
//
// Layouts
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct ContentView: View {

    // MARK: - @State Properties
    
    @State private var messageString = ""

    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle).fontWeight(.heavy)
                .foregroundStyle(.red)
                .minimumScaleFactor(0.8)
                .multilineTextAlignment(.center)
                .frame(height: 250)
                .frame(maxWidth: .infinity)
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.indigo)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
