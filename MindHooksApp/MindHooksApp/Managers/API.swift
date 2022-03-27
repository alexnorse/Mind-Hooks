//
//  WordNetworkCall.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import UIKit

final class API {
     static let shared = API()
     private let wordURL     = "\(URLs.wordAPI)wordOfTheDay?date=\(Day.today.yyyyMMdd())&api_key=\(URLs.wordAPIKey)"
     
     private init() {}
     
     
     func fetch<T: Decodable>(from url: String, completion: @escaping (Result<T, MHErrors>) -> Void) {
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
          let result = API.shared.fetch(from: url, completion: completion)
          return result
     }
     
     func fetchWord(completion: @escaping (Result<Word, MHErrors>) -> Void) {
          let url = wordURL
          let result = API.shared.fetch(from: url, completion: completion)
          return result
     }
     
     func fetchEvent(completion: @escaping (Result<Event, MHErrors>) -> Void) {
          let url = URLs.eventAPI
          let result = API.shared.fetch(from: url, completion: completion)
          return result
     }
     
     
     
     
     func getQuote(completion: @escaping (Quote) -> ()) {
          guard let url = URL(string: URLs.quoteAPI) else {
               print(MHErrors.invalidURL)
               return
          }

          let task = URLSession.shared.dataTask(with: url) { data, response, error in

               if let error = error {
                    print(error.localizedDescription)
                    return
               }

               guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                    print(MHErrors.invalidResponse)
                    return
               }

               guard let data = data else {
                    print(MHErrors.invalidData)
                    return
               }

               do {
                    let decoder = JSONDecoder()
                    let quote = try decoder.decode(Quote.self, from: data)
                    completion(quote)
               } catch {
                    print(MHErrors.invalidData)
               }
          }
          task.resume()
     }
}
