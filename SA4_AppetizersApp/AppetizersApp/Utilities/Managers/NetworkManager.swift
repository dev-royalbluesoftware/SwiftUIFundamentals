//
//
// AppetizersApp
// NetworkManager.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import UIKit

final class NetworkManager {
    
    // MARK: - Shared (Singleton)
    
    static let shared = NetworkManager()
    
    private init() {}
    
    // MARK: - Properties
    
    static let baseURLString = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURLString + "appetizers"
    private let cache = NSCache<NSString, UIImage>()  // create image cache
    
    // MARK: - Get Appetizers Function
    
    func getAppetizers(completion: @escaping (Result<[Appetizer], APError>) -> Void) {
        // check valid url
        guard let url = URL(string: appetizerURL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            // error case
            if let _ = error {
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
    
    // MARK: - Download Image Function
    
    func downloadImage(fromURLString urlString: String, completion: @escaping (UIImage?) -> Void) {
        // check if image is in cache
        let cacheKey = NSString(string: urlString)
        if let image = cache.object(forKey: cacheKey) {
            completion(image)
            return
        }
       
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                completion(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            completion(image)
        }.resume()
    }
}
