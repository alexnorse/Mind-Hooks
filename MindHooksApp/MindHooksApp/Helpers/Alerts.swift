//
//  Alerts.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import Foundation

struct Alerts {
    let title: String
    let message: String
}


struct AlertContext {
    static let invalidData          = Alerts(title: "Server Error ☹️",
                                             message: "The data from the server is invalid")
    
    static let invalidResponse      = Alerts(title: "Server Error ☹️",
                                             message: "Invalid response from the server")
    
    static let invalidURL           = Alerts(title: "Server Error ☹️",
                                             message: "Some troubles with URL...")
    
    static let unableToComplete     = Alerts(title: "Server Error ☹️",
                                             message: "Check your internet connection")
}
