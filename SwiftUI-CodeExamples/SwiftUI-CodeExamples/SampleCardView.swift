//
//
// SwiftUI-CodeExamples
// SampleCardView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import SwiftUI

struct ProductCard: View {
    let product: Product // Assume Product is your model
    
    var body: some View {
        VStack(alignment: .leading) {
            // Image
            Image(product.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 150)
            
            // Content
            VStack(alignment: .leading, spacing: 8) {
                Text(product.name)
                    .font(.headline)
                
                Text(product.description)
                    .font(.subheadline)
                    .lineLimit(2)
                
                HStack {
                    Text("$\(product.price, specifier: "%.2f")")
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    
                    Button("Add to Cart") {
                        // Add to cart action
                    }
                    .buttonStyle(.bordered)
                }
            }
            .foregroundStyle(.white)
            .padding()
        }
        .background(Gradient(colors: [.blue, .indigo]))
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
        .padding()
    }
}

#Preview {
    ProductCard(product: mockData.sampleProduct)
}
