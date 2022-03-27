//
//  OnboardSubViews.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct OnboardSubViews: View {
    
    var body: some View {
        VStack {
            OnboardingFirst()
            OnboardingSecond()
            OnboardingThird()
        }
    }
}


struct OnboardingFirst: View {
    
     var body: some View {
        HStack(spacing: UInumbers.spacing) {
            OnboardingImage(name: "cloud.sun.fill")
            
            VStack(alignment: .leading, spacing: 3) {
                OnboardingBold(text: OnboardingHeads.first)
                DescriptionText(text: OnboardingDescriptions.first)
            }
            .padding()
        }
        .padding()
    }
}


struct OnboardingSecond: View {
    
     var body: some View {
        HStack(spacing: UInumbers.spacing) {
            OnboardingImage(name: "bolt.fill")
            
            VStack(alignment: .leading, spacing: 3) {
                OnboardingBold(text: OnboardingHeads.second)
                DescriptionText(text: OnboardingDescriptions.second)
            }
            .padding()
        }
        .padding()
    }
}


struct OnboardingThird: View {
    
     var body: some View {
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


struct OnboardSubViews_Previews: PreviewProvider {
    static var previews: some View {
        OnboardSubViews()
    }
}
