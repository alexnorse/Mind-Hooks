//
//  WordNetworkCall.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import UIKit

final class API {
     static let shared = API()
     private let qotdURL     = URLs.dailyQuoteAPI
     private let wordURL     = "\(URLs.wordAPI)wordOfTheDay?date=\(Day.today.yyyyMMdd())&api_key=\(URLs.wordAPIKey)"
     private let eventURL    = URLs.eventAPI
     
     private init() {}
     
     func getQotD(completion: @escaping (Result<DailyQuote, MHErrors>) -> Void) {
          guard let url = URL(string: qotdURL) else {
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
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let quote = try decoder.decode(DailyQuote.self, from: data)
                    completion(.success(quote))
               } catch {
                    completion(.failure(.invalidData))
               }
          }
          task.resume()
     }
     
     
     func getWord(completion: @escaping(Result<Word, MHErrors>) -> Void) {
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
     
     
     func getEvent(completion: @escaping(Result<Event, MHErrors>) -> Void) {
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
                    let event = try decoder.decode(Event.self, from: data)
                    completion(.success(event))
               } catch {
                    completion(.failure(.invalidData))
               }
          }
          task.resume()
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
