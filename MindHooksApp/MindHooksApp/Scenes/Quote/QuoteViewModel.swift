//
//  QotDViewModel.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 9/14/21.
//

import SwiftUI

final class QuoteViewModel: ObservableObject {
     
     @Published var quote: String = ""
     @Published var author: String = ""
     @Published var alertItem: Alerts?
     
     private var api: API
     
     init (api: API) {
          self.api = api
          getQuote()
     }
     
     
     func getQuote() {
          api.fetchQuote { [weak self] result in
               guard let self = self else { return }
               
               DispatchQueue.main.async {
                    switch result {
                         
                    case.success(let quote):
                         self.quote = quote.quoteBody
                         self.author = quote.quoteAuthor
                         
                    case.failure(let error):
                         switch error {
                         case .invalidResponse:
                              self.alertItem = AlertContext.invalidResponse
                              
                         case .invalidURL:
                              self.alertItem = AlertContext.invalidURL
                              
                         case .unableToComplete:
                              self.alertItem = AlertContext.unableToComplete
                              
                         case .invalidData:
                              self.alertItem = AlertContext.invalidData
                         }
                    }
               }
          }
     }
}

