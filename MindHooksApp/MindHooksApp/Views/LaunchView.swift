//
//  LaunchView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 11/4/21.
//

import SwiftUI

struct LaunchView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        VStack {
            if router.currentPage == "onboarding" {
                OnboardingView()
            } else if router.currentPage == "main" {
                MainView()
            }
        }
        
    }
}


struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
