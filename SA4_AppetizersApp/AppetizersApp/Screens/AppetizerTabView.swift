//
//
// AppetizersApp
// AppetizerTabView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                AppetizerListView()
            }
            
            Tab("Account", systemImage: "person") {
                AccountView()
            }
            
            Tab("Order", systemImage: "bag") {
                OrderView()
            }
        }
        .tint(.brandPrimary)
    }
}

#Preview {
    AppetizerTabView()
}
