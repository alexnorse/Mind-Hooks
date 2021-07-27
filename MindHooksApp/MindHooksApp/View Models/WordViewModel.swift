//
//  WordViewModel.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import SwiftUI

final class WordViewModel: ObservableObject {
    
    @Published var word: Word?
    @Published var alertItem: Alerts?
    
    func getWord() {
        NetworkCall.shared.getWord { result in
            
            DispatchQueue.main.sync {
                switch result {
                
                case.success(let word):
                    self.word = word
                    
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
