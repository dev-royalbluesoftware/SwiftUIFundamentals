//
//
// Fundamentals
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(.blue.gradient)
                    
                
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.6)
                    .foregroundStyle(.orange)
            }
            
            Text("You Are Awesome!")
                .font(.largeTitle).fontWeight(.black)
                .foregroundStyle(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
