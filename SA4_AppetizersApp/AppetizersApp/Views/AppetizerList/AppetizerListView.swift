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
    
    // MARK: - @State Properties
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .onAppear() {
            viewModel.getAppetizers()
        }
    }
}

#Preview {
    AppetizerListView()
}
