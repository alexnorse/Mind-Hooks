//
//  WordNetworkCall.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import Foundation

final class API {
     static let shared = API()
     private let wordURL = "\(URLs.wordAPI)wordOfTheDay?date=\(Day.today.yyyyMMdd())&api_key=\(URLs.wordAPIKey)"
     
     
     private func fetch<T: Decodable>(from url: String, completion: @escaping (Result<T, MHErrors>) -> Void) {
          guard let endpoint = URL(string: url) else {
               completion(.failure(.invalidURL))
               return
          }
          
          let task = URLSession.shared.dataTask(with: endpoint) { data, response, error in
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
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let result = try decoder.decode(T.self, from: data)
                    completion(.success(result))
               } catch {
                    completion(.failure(.invalidData))
               }
          }
          task.resume()
     }
     
     
     func fetchQuote(completion: @escaping (Result<DailyQuote, MHErrors>) -> Void) {
          let url = URLs.dailyQuoteAPI
          let result: () = fetch(from: url, completion: completion)
          return result
     }
     
     func fetchWord(completion: @escaping (Result<Word, MHErrors>) -> Void) {
          let url = wordURL
          let result: () = fetch(from: url, completion: completion)
          return result
     }
     
     func fetchEvent(completion: @escaping (Result<Event, MHErrors>) -> Void) {
          let url = URLs.eventAPI
          let result: () = fetch(from: url, completion: completion)
          return result
     }
}
