//
//  PaywallSubViews.swift
//  MindHooksApp
//
//  Created by Alexandr on 3/27/22.
//

import SwiftUI

enum Purchase: CaseIterable {
     case first
     case second
     case success
}


struct PaywallSub: View {
     var type: Purchase
     
     var body: some View {
          
          switch type {
          case .first:
               HStack(spacing: UInumbers.spacing) {
                    OnboardingImage(name: "books.vertical.fill")
                    
                    VStack(alignment: .leading, spacing: 3) {
                         OnboardingBold(text: PurchaseHeads.first)
                         DescriptionText(text: PurchaseDescriptions.first)
                    }
                    .padding()
               }
               .padding()
               
          case .second:
               HStack(spacing: UInumbers.spacing) {
                    OnboardingImage(name: "book.fill")
                    
                    VStack(alignment: .leading, spacing: 3) {
                         OnboardingBold(text: PurchaseHeads.second)
                         DescriptionText(text: PurchaseDescriptions.second)
                    }
                    .padding()
               }
               .padding()
               
          case .success:
               HStack(spacing: UInumbers.spacing) {
                    OnboardingImage(name: "checkmark.circle.fill")
                    
                    VStack(alignment: .leading, spacing: 3) {
                         OnboardingBold(text: PurchaseHeads.success)
                         DescriptionText(text: PurchaseDescriptions.success)
                    }
                    .padding()
               }
               .padding()
          }
     }
}
