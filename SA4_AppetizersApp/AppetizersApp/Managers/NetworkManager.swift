//
//
// AppetizersApp
// NetworkManager.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import Foundation

final class NetworkManager {
    
    // MARK: - Shared (Singleton)
    
    static let shared = NetworkManager()
    
    private init() {}
    
    // MARK: - Properties
    
    static let baseURLString = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURLString + "appetizers"
    
    // MARK: - Get Appetizers Function
    
    func getAppetizers(completion: @escaping (Result<[Appetizer], APError>) -> Void) {
        // check valid url
        guard let url = URL(string: appetizerURL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            // error case
            guard let _ = error else {
                completion(.failure(.unableToComplete))
                return
            }
            
            // check valid response
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            // check for valid data
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            // decode the data, catch the error
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                
                completion(.success(decodedResponse.request))
                
            } catch {
                completion(.failure(.invalidData))
            }
        }.resume()
    }
}
