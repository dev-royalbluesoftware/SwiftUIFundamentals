//
//
// YouAreAwesome
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import SwiftUI
import AVFAudio

struct ContentView: View {
    
    // MARK: - @State Properties
    
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var audioPlayer: AVAudioPlayer!
    @State private var soundName = ""
    
    // MARK: - Properties
    
    let numberOfImages = 10
    let numberOfSounds = 6
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle).fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.4)
                .frame(height: 130)
                .animation(.easeInOut(duration: 0.15), value: messageString)
            
            Spacer()
            
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
                var lastSoundName: String

                repeat {
                    lastMessageString = messages.randomElement() ?? "You Are Awesome!"
                    lastImageName = "image\(Int.random(in: 0...numberOfImages - 1))"
                    lastSoundName = "sound\(Int.random(in: 0...numberOfSounds - 1))"
                } while lastMessageString == messageString || lastImageName == imageName || lastSoundName == soundName
                
                messageString = lastMessageString
                imageName = lastImageName
                soundName = lastSoundName
                
                // Audio Player
                guard let soundFile = NSDataAsset(name: soundName) else {
                    print("😡 Could not read file named \(soundName)")
                    return
                }
                
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                    
                } catch {
                    print("😡 ERROR: \(error.localizedDescription) creating audio player")
                }
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
