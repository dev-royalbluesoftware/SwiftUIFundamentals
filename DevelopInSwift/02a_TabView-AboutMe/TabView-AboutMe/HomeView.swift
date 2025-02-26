//
//
// TabView-AboutMe
// HomeView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("All About Me")
                .font(.largeTitle).fontWeight(.bold)
                .foregroundStyle(.indigo)
                .padding()
            
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .opacity(0.2)
                
                Color.blue.opacity(0.2)
                
                Image(systemName: information.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(.white)
                    .padding(40)
            }
            .padding()
            .frame(maxWidth: 350, maxHeight: 400)
            
            Spacer()
            
            Text(information.name)
                .font(.title)
                .foregroundStyle(.green)
            
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
