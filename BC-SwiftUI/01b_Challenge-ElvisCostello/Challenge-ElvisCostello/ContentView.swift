//
//
// Challenge-ElvisCostello
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import SwiftUI

struct ContentView: View {
    
    // MARK: - @State Properties
    
    @State private var messageString = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle).fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
                Text(messageString)
                    .font(.largeTitle).fontWeight(.black)
                    .foregroundStyle(.purple)
            }
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    messageString = "Peace"
                    imageName = "peacesign"
                }
                
                Button("Love") {
                    messageString = "Love"
                    imageName = "heart"
                }
                
                Button("Understanding") {
                    messageString = "Understanding"
                    imageName = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
