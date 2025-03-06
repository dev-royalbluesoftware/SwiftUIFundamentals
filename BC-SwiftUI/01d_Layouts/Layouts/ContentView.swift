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
        GeometryReader { geometry in
            
            VStack {
                Text("You Have Skills!")
                    .font(.largeTitle).fontWeight(.black)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.maroonBC)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle).fontWeight(.heavy)
                    .foregroundStyle(.red)
                    .minimumScaleFactor(0.8)
                    .multilineTextAlignment(.center)
                    .frame(height: 250)
                    .frame(maxWidth: .infinity)
                
                Spacer()
                
                Divider()
                    .background(.black)
                
                Rectangle()
                    .fill(.white)
                    .frame(width: geometry.size.width * 0.75, height: 1)
                
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
            .background(.skyBlue.gradient)
        }
    }
}

#Preview {
    ContentView()
}
