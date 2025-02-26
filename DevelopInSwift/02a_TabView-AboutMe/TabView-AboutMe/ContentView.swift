//
//
// TabView-AboutMe
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "person") {
                HomeView()
            }
            
            Tab("Story", systemImage: "book") {
                StoryView()
            }
            
            Tab("Favorites", systemImage: "star") {
                FavoritesView()
            }
            
            Tab("Fun Facts", systemImage: "hand.thumbsup") {
                FunFactsView()
            }
        }
    }
}

#Preview {
    ContentView()
}
