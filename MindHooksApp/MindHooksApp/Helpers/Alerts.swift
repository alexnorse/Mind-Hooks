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
    static let invalidData       = Alerts(title: Text("Server Error 😔"),
                                          message: Text("The data from the server is invalid"),
                                          dismissButton: .default (Text("Ok")))
    
    static let invalidResponse   = Alerts(title: Text("Response Error 😔"),
                                          message: Text("Invalid response from the server"),
                                          dismissButton: .default (Text("Ok")))
    
    static let invalidURL        = Alerts(title: Text("URL Error 😔"),
                                          message: Text("URL source Error"),
                                          dismissButton: .default (Text("Ok")))
    
    static let unableToComplete  = Alerts(title: Text("Connection Error 😔"),
                                          message: Text("Please, check your internet connection"),
                                          dismissButton: .default (Text("Ok")))
    
    static let purchaseSucceed  = Alerts(title: Text("Successful purchase 🎉"),
                                          message: Text("Thank you!"),
                                          dismissButton: .default (Text("Ok")))
    
    static let purchaseFailed  = Alerts(title: Text("Purchase failed 😔"),
                                          message: Text("Please, try again or relaunch the App"),
                                          dismissButton: .default (Text("Ok")))
}
