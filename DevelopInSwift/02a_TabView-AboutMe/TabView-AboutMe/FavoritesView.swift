//
//
// TabView-AboutMe
// FavoritesView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle).fontWeight(.bold)
                .foregroundStyle(.indigo)
                .padding(.bottom)
                
            Spacer()
            
            Text("Hobbies")
                .font(.title2)
                .foregroundStyle(.cyan)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(information.hobbies, id: \.self) { hobby in
                        Image(systemName: hobby)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 80, maxHeight: 60)
                    }
                    .padding()
                }
                .padding()
            }
            
            Spacer()
            
            Text("Foods")
                .font(.title2)
                .foregroundStyle(.orange)
            
            HStack {
                ForEach(information.foods, id: \.self) { food in
                    Text(food)
                        .font(.system(size: 40))
                }
            }
            .padding()
            
            Spacer()
            
            Text("Favorite Colors")
                .font(.title2)
                .foregroundStyle(.green)
            
            HStack {
                ForEach(information.colors, id: \.self) { color in
                    color
                        .frame(width: 70, height: 70)
                        .clipShape(.rect(cornerRadius: 15))
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    FavoritesView()
}
