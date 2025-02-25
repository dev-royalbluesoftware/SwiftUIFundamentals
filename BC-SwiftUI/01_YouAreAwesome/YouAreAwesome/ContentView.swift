//
//
// YouAreAwesome
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.indigo)
            
            Text("You Are Awesome!")
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
