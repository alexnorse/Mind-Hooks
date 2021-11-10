//
//  MindHooksAppApp.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/25/21.
//

import SwiftUI
import Purchases

@main
struct MindHooksAppApp: App {
    
    init() { setupRevenueCat() }
    
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                MainView()
            }
        }
    }
    
    func setupRevenueCat() {
        Purchases.logLevel = .debug
        Purchases.configure(withAPIKey: "mwVwRpeBdJvymGtpUDNtgqaLIfcDhcSe", appUserID: nil, observerMode: true)
    }
    
}
