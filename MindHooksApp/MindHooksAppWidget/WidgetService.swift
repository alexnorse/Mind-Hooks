//
//  WidgetService.swift
//  MindHooksApp
//
//  Created by Alexandr on 7/10/22.
//

import Foundation

final class WidgetService {
     static let shared = WidgetService()
     
     private func fetch<T: Decodable>(from endpoint: String) async throws -> T {
         let url = endpoint
         
          guard let url = URL(string: url) else {
             throw URLError(.badURL)
         }

         let (data, _) = try await URLSession.shared.data(from: url)
         let decoder = JSONDecoder()
         let result = try decoder.decode(T.self, from: data)
         return result
     }
     
     
     func fetchWidget() async throws -> Quote {
          let url = URLs.quoteAPI
          let result: Quote = try await fetch(from: url)
          return result
     }
}
