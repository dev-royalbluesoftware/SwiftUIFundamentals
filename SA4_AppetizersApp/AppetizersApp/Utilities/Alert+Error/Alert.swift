//
//
// AppetizersApp
// Alert.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: Text
    var message: Text
//    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("The data returned from the server was invalid. Please contact support."))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from the server. Please try again later or contact support."))
    
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("There was an issue connecting to the server. Please check your internet connection and try again."))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete your request. Please check your internet connection and try again."))
}

