//
//  WordViewModel.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import SwiftUI

final class QuoteViewModel: ObservableObject {
    
    @Published var quote: String = ""
    @Published var author: String = ""
    
    @Published var alertItem: Alerts?
    
    init () { getQuote() }
    
    func getQuote() {
        NetworkCall.shared.getQuote { result in
            
            DispatchQueue.main.sync {
                switch result {
                
                case.success(let quote):
                    self.quote = quote.quote
                    self.author = quote.author
                    
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
