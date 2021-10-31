//
//  OnboardingView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var show: Bool = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: UInumbers.spacing) {
            
            OnboardingHeadline(text: "Welcome!")
                .padding()
            
            VStack(spacing: -UInumbers.spacing) {
                HStack(spacing: UInumbers.spacing) {
                    Image(systemName: "cloud.sun.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: ImageSizes.onboarding, height: ImageSizes.onboarding, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: OnboardingHeads.first)
                        DescriptionText(text: OnboardingDescriptions.first)
                    }
                    .padding()
                }
                .padding()
                
                
                HStack(spacing: UInumbers.spacing) {
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: ImageSizes.onboarding, height: ImageSizes.onboarding, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: OnboardingHeads.second)
                        DescriptionText(text: OnboardingDescriptions.second)
                    }
                    .padding()
                }
                .padding()
                
                
                HStack(spacing: UInumbers.spacing) {
                    Image(systemName: "quote.closing")
                        .resizable()
                        .scaledToFit()
                        .frame(width: ImageSizes.onboarding, height: ImageSizes.onboarding, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: OnboardingHeads.third)
                        DescriptionText(text: OnboardingDescriptions.third)
                    }
                    .padding()
                }
                .padding()
            }
            
            
            Button {
                
            } label: {
                OnboardingButton(label: "Get started")
            }
            .padding()
            
        }
        .padding()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
