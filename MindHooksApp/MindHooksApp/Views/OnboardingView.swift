//
//  OnboardingView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 5) {
            
            AccentText(text: "Welcome!")
            
            HStack(spacing: 20) {
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.accentColor)
                
                VStack(alignment: .leading, spacing: 3) {
                    AccentText(text: "Inspire your day")
                    DescriptionText(text: "Get daily update: quotes, words, and historical events")
                }
                .padding()
            }
            .padding()
            
            
            HStack(spacing: 20) {
                Image(systemName: "bolt.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.accentColor)
                
                VStack(alignment: .leading, spacing: 3) {
                    AccentText(text: "Drive your mind")
                    DescriptionText(text: "Personality development through the most influential experience")
                }
                .padding()
            }
            .padding()
            
            
            HStack(spacing: 20) {
                Image(systemName: "quote.closing")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.accentColor)
                
                VStack(alignment: .leading, spacing: 3) {
                    AccentText(text: "Experience that matter")
                    DescriptionText(text: "Learn more from the greatest minds in the world!")
                }
                .padding()
            }
            .padding()
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
