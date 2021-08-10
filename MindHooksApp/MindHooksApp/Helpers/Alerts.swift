//
//  Alerts.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import SwiftUI

struct Alerts: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    static let invalidData       = Alerts(title: Text("Server Error ☹️"),
                                          message: Text("The data from the server is invalid"),
                                          dismissButton: .default (Text("Ok")))
    
    static let invalidResponse   = Alerts(title: Text("Response Error ☹️"),
                                          message: Text("Invalid response from the server"),
                                          dismissButton: .default (Text("Ok")))
    
    static let invalidURL        = Alerts(title: Text("URL Error ☹️"),
                                          message: Text("Some troubles with URL..."),
                                          dismissButton: .default (Text("Ok")))
    
    static let unableToComplete  = Alerts(title: Text("Connection Error ☹️"),
                                          message: Text("Check your internet connection"),
                                          dismissButton: .default (Text("Ok")))
}
