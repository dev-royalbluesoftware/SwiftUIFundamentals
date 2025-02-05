//
//
// AppetizersApp
// LoadingView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style: .large)
        activityIndicatorView.color = .brandPrimary
        
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
    }
}

// MARK: - Loading View Struct

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
            ActivityIndicator()
        }
        .ignoresSafeArea(.all)
    }
}
