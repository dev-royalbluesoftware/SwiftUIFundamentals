//
//
// AppetizersApp
// Appetizer.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import Foundation

struct Appetizer: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

// RESPONSE OBJECT - for nested APIs
struct AppetizerResponse: Codable {
    let request: [Appetizer]
}

// MARK: - Mock Data

struct MockAppetizers {
    static let sampleAppetizer = Appetizer(id: 0001, name: "Test Appetizer", description: "This is the description for my appetizer.  It's yummy!", price: 9.99, imageURL: "", calories: 99, protein: 99, carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
