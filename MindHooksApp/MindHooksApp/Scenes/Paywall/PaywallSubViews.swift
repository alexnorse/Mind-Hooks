//
//  PaywallSubViews.swift
//  MindHooksApp
//
//  Created by Alexandr on 3/27/22.
//

import SwiftUI

struct PaywallSubViews: View {
    
    var body: some View {
        VStack {
            PurchaseFirst()
            PurchaseSecond()
            PurchaseSuccess()
        }
    }
}


struct PurchaseFirst: View {
   
     var body: some View {
        HStack(spacing: UInumbers.spacing) {
            OnboardingImage(name: "books.vertical.fill")
            
            VStack(alignment: .leading, spacing: 3) {
                OnboardingBold(text: PurchaseHeads.first)
                DescriptionText(text: PurchaseDescriptions.first)
            }
            .padding()
        }
        .padding()
    }
}


struct PurchaseSecond: View {
    
     var body: some View {
        HStack(spacing: UInumbers.spacing) {
            OnboardingImage(name: "book.fill")
            
            VStack(alignment: .leading, spacing: 3) {
                OnboardingBold(text: PurchaseHeads.second)
                DescriptionText(text: PurchaseDescriptions.second)
            }
            .padding()
        }
        .padding()
    }
}


struct PurchaseSuccess: View {
    
     var body: some View {
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


struct PaywallSubViews_Previews: PreviewProvider {
    static var previews: some View {
         PaywallSubViews()
    }
}
