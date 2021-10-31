//
//  PurchaseView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct PurchaseView: View {
    
    @State var show: Bool = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            
            OnboardingHeadline(text: "Unlock Collections")
                .padding()
            
            VStack(spacing: -UInumbers.spacing) {
                HStack(spacing: UInumbers.spacing) {
                    Image(systemName: "books.vertical.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: ImageSizes.onboarding, height: ImageSizes.onboarding, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: PurchaseHeads.first)
                        DescriptionText(text: PurchaseDescriptions.first)
                    }
                    .padding()
                }
                .padding()
                
                
                HStack(spacing: UInumbers.spacing) {
                    Image(systemName: "book.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: ImageSizes.onboarding, height: ImageSizes.onboarding, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: PurchaseHeads.second)
                        DescriptionText(text: PurchaseDescriptions.second)
                    }
                    .padding()
                }
                .padding()
            }
            
            
            Button {
                
            } label: {
                OnboardingButton(label: "Unlock current one")
            }
            
            
            Button {
                
            } label: {
                OnboardingButton(label: "Unlock all")
            }
            
            
            Button {
                
            } label: {
                LinkText(text: Descriptions.restore)
            }
            .padding()
            
            
            WidgetNoteText(text: Descriptions.paymentDetails)
                .padding()
            
        }
        .padding()
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
    }
}
