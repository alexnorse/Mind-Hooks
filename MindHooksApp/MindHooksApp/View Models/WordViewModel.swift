//
//  WordViewModel.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/3/21.
//

import Foundation

final class WordViewModel: ObservableObject {
    
    @Published var word: String = ""
    @Published var definition: String = ""
    
    @Published var alertItem: Alerts?
    
    init () { getWord() }
    
    func getWord() {
        NetworkCall.shared.getWord { [weak self] result in
            guard let self = self else { return }
            
            DispatchQueue.main.sync {
                switch result {
                
                case.success(let word):
                    self.word = word.word
                    self.definition = word.definitions.first?.text ?? TernaryDescription.todayError
                    
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
