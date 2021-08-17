//
//  WordNetworkCall.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import UIKit

final class NetworkCall {
    
    static let shared = NetworkCall()
    
    let quoteURL    = URLs.quoteAPI
    let wordURL     = URLs.wordAPI
    let eventURL    = URLs.eventAPI
    
    var lastCheck: Date?
    

    
    private init() {}
    
    
    func getQuote(completion: @escaping (Result<Quote, MHErrors>) -> Void) {
        guard let url = URL(string: quoteURL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let quote = try decoder.decode(Quote.self, from: data)
                completion(.success(quote))
            } catch {
                completion(.failure(.invalidData))
            }
        }
        task.resume()
    }
    
    
    func getWord(completion: @escaping(Result<[Word], MHErrors>) -> Void) {
        guard let url = URL(string: wordURL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let word = try decoder.decode([Word].self, from: data)
                completion(.success(word))
            } catch {
                completion(.failure(.invalidData))
            }
        }
        task.resume()
    }
    
    
    func getEvent(completion: @escaping(Result<Events, MHErrors>) -> Void) {
        guard let url = URL(string: eventURL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let event = try decoder.decode(Events.self, from: data)
                completion(.success(event))
            } catch {
                completion(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
