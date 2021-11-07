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
        Purchases.debugLogsEnabled = true
        Purchases.configure(withAPIKey: "mwVwRpeBdJvymGtpUDNtgqaLIfcDhcSe")
    }
    
}
