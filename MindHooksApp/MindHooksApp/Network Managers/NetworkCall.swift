//
//  WordNetworkCall.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import UIKit

final class NetworkCall {
    static let shared = NetworkCall()
    
    let wordURL = "https://random-words-api.vercel.app/word"
    
    private init() {}
    
    func getWord(completion: @escaping (Result<Word, APErrors>) -> Void) {
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
                let word = try decoder.decode(Word.self, from: data)
                completion(.success(word))
            } catch {
                completion(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
