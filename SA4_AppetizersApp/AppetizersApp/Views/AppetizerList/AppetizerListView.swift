//
//
// AppetizersApp
// AppetizerListView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockAppetizers.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
