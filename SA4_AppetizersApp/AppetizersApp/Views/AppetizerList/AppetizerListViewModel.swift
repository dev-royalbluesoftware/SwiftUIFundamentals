//
//
// AppetizersApp
// AppetizerListViewModel.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    // MARK: - Properties
    
    @Published var appetizers: [Appetizer] = []
    
    // MARK: - Get Appetizers Functions
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
    }
}
