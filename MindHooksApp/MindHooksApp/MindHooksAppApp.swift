//
//  MindHooksAppApp.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/25/21.
//

import SwiftUI

@main
struct MindHooksAppApp: App {

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
}
