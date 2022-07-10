//
//  MindHooksAppApp.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/25/21.
//

import SwiftUI
#if MindHooksApp
import Purchases
#endif

@main
struct MindHooksAppApp: App {
     
     #if MindHooksApp
     init() { setupRevenueCat() }
     #endif
     
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
     
     #if MindHooksApp
     func setupRevenueCat() {
          Purchases.logLevel = .debug
          Purchases.configure(withAPIKey: "mwVwRpeBdJvymGtpUDNtgqaLIfcDhcSe", appUserID: nil, observerMode: true)
     }
     #endif
}
