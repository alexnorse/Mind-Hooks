//
//  EventViewModel.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/7/21.
//

import Foundation

final class EventViewModel: ObservableObject {
    
    @Published var year: String = ""
    @Published var description: String = ""
    @Published var link: String = ""
    
    @Published var alertItem: Alerts?
    
    init () { getEvent() }
    
    func getEvent() {
        NetworkCall.shared.getEvent { [weak self] result in
            guard let self = self else { return }
            
            DispatchQueue.main.sync {
                switch result {
                
                case.success(let event):
                    self.year = event.data.Events.first?.year ?? TernaryDescription.todayError
                    self.description = event.data.Events.first?.text ?? TernaryDescription.todayError
                    self.link = event.data.Events.first?.links.first?.link ?? TernaryDescription.todayError
                    
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
