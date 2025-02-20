//
//
// SwiftUI-CodeExamples
// Product.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let description: String
    let imageName: String
    
}

struct mockData {
    static let sampleProduct = Product(name: "iPhone 13", price: 799.99, description: "A brand new iPhone 13", imageName: "food-placeholder")
}
