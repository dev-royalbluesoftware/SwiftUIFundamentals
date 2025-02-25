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
    
    // MARK: - @State Properties
    
   @State private var messageString = "You Are Awesome!"
    
    // MARK: - Properties
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.indigo)
                .frame(width: 200, height: 200)
            
            Text(messageString)
                .font(.largeTitle).fontWeight(.ultraLight)
            
            Spacer()
            
            HStack {
                Button {
                    messageString = "You Are Great!"
                } label: {
                    Text("Great!")
                }
                
                Button {
                    messageString = "Great Job, Coder!"
                } label: {
                    Text("Great Job!")
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
