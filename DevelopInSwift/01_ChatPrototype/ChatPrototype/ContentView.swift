//
//
// ChatPrototype
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            HStack {
                Text("Knock, knock!")
                    .padding()
                    .background(.yellow, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
                
                Spacer()
            }
            
            HStack {
                Spacer()
                
                Text("Who's there?")
                    .padding()
                    .background(.teal, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
            }
            
            HStack {
                Text("Spell")
                    .padding()
                    .background(.yellow, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
                
                Spacer()
            }
            
            HStack {
                Spacer()
                
                Text("Spell Who?")
                    .padding()
                    .background(.teal, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
            }
            
            HStack {
                Text("If you insist... W. H. O.")
                    .padding()
                    .background(.yellow, in: RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 8)
                
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
