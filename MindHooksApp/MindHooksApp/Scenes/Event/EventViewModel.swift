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
     
     private var api: API
     
     init (api: API) {
          self.api = api
          getEvent()
     }
     
     
     func getEvent() {
          api.fetchEvent { [weak self] result in
               guard let self = self else { return }
               
               DispatchQueue.main.async {
                    switch result {
                         
                    case.success(let event):
                         let randomEvent = event.events.randomElement()
                         self.year = randomEvent?.year ?? TernaryDescription.todayError
                         self.description = randomEvent?.description ?? TernaryDescription.todayError
                         self.link = randomEvent?.wikipedia.first?.wikipedia ?? TernaryDescription.todayError
                         
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
