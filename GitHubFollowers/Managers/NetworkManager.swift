//
//  NetworkManager.swift
//  GitHubFollowers
//
//  Created by Jon Corn on 4/10/22.
//

import UIKit

class NetworkManager {
    
    // Singleton
    static let shared = NetworkManager()
    private init() {}
    
    // Properites
    private let baseURL = "https://api.github.com/users/"
    let cache           = NSCache<NSString, UIImage>()
    
// MARK: - Network methods
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GFError>) -> Void) {
        
        // BUILD URL
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }

        // URLSESSION DATATASK
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Handle error
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            // Handle response
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            // Handle data
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            // decode data, catch possible error
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
    
    func getUserInfo(for username: String, completed: @escaping (Result<User, GFError>) -> Void) {
        
        // BUILD URL
        let endpoint = baseURL + "\(username)"
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUsername))
            return
        }

        // URLSESSION DATATASK
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Handle error
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            // Handle response
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            // Handle data
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            // decode data, catch possible error
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let user = try decoder.decode(User.self, from: data)
                completed(.success(user))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
