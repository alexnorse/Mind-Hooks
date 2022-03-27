//
//  OnboardSubViews.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

enum Onboarding: CaseIterable {
     case first
     case second
     case third
}

struct OnboardingSub: View {
     var number: Onboarding
     
     var body: some View {
          
          switch number {
          case .first:
               HStack(spacing: UInumbers.spacing) {
                    OnboardingImage(name: "cloud.sun.fill")
                    
                    VStack(alignment: .leading, spacing: 3) {
                         OnboardingBold(text: OnboardingHeads.first)
                         DescriptionText(text: OnboardingDescriptions.first)
                    }
                    .padding()
               }
               .padding()
               
          case .second:
               HStack(spacing: UInumbers.spacing) {
                    OnboardingImage(name: "bolt.fill")
                    
                    VStack(alignment: .leading, spacing: 3) {
                         OnboardingBold(text: OnboardingHeads.second)
                         DescriptionText(text: OnboardingDescriptions.second)
                    }
                    .padding()
               }
               .padding()
               
          case .third:
               HStack(spacing: UInumbers.spacing) {
                    OnboardingImage(name: "quote.closing")
                    
                    VStack(alignment: .leading, spacing: 3) {
                         OnboardingBold(text: OnboardingHeads.third)
                         DescriptionText(text: OnboardingDescriptions.third)
                    }
                    .padding()
               }
               .padding()
          }
     }
}
