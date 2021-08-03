//
//  PhotoViewModel.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/3/21.
//

import Foundation

final class PhotoViewModel: ObservableObject {
    
    @Published var id: String = ""
    @Published var description: String = ""
    @Published var urls: String = ""
    
    @Published var alertItem: Alerts?
    
    init() { getPhoto() }
    
    func getPhoto() {
        UnsplashCall.shared.getPhoto { result in
            
            DispatchQueue.main.sync {
                switch result {
                
                case.success(let photo):
                    self.id = photo.id
                    self.description = photo.description ?? ""
                    self.urls = photo.urls.regular
                    
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
