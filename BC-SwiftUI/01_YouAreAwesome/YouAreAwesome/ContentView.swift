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
    
    @State private var messageString = ""
    @State private var imageName = ""
    
    // MARK: - Properties
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle).fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.4)
                .frame(height: 130)
                .animation(.easeInOut(duration: 0.15), value: messageString)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button {
                let messages = ["You Are Awesome!",
                                "When the Genuis Bar Needs Help, They Call You!",
                                "You Are Amazing!",
                                "You Are Great!",
                                "You Are Incredible!",
                                "You Are Superb!",
                                "You Are Fantastic!",
                                "You Are Mind Blowing!",
                                "You Are Radiant!"]
                
                var lastMessageString: String
                var lastImageName: String
                
                repeat {
                    lastMessageString = messages.randomElement() ?? "You Are Awesome!"
                    lastImageName = "image\(Int.random(in: 0...9))"
                } while lastMessageString == messageString || lastImageName == imageName
                
                messageString = lastMessageString
                imageName = lastImageName
                
            } label: {
                Text("Show Message")
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.indigo)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
