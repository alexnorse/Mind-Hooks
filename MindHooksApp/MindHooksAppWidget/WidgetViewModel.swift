//
//  WidgetViewModel.swift
//  MindHooksApp
//
//  Created by Alexandr on 3/27/22.
//

import SwiftUI

final class WidgetViewModel: ObservableObject {
     
     @Published var quote: Quote?
     @Published var alertItem: Alerts?
     
     init () { getWidget() }
     
     func getWidget() {
          API.shared.fetchWidget { [weak self] result in
               guard let self = self else { return }
               
               DispatchQueue.main.async {
                    switch result {
                         
                    case.success(let quote):
                         self.quote = quote
                         
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
