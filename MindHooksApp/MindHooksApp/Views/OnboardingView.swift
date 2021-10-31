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
        
        VStack(alignment: .center, spacing: 30) {
            
            OnboardingHeadline(text: "Welcome!")
                .padding()
            
            VStack(spacing: -20) {
                HStack(spacing: 20) {
                    Image(systemName: "cloud.sun.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: "Inspire your day")
                        DescriptionText(text: "Get the daily updates: quotes, words, and historical events")
                    }
                    .padding()
                }
                .padding()
                
                
                HStack(spacing: 20) {
                    Image(systemName: "bolt.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: "Drive your mind")
                        DescriptionText(text: "Personality development through the most influential experience")
                    }
                    .padding()
                }
                .padding()
                
                
                HStack(spacing: 20) {
                    Image(systemName: "quote.closing")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: "Experience that matter")
                        DescriptionText(text: "Learn more from the greatest minds in the world!")
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
