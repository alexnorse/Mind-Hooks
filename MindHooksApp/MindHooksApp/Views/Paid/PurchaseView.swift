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
            
            VStack(spacing: -20) {
                HStack(spacing: 20) {
                    Image(systemName: "books.vertical.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: "What collections are the?")
                        DescriptionText(text: "Brilliant thoughts of the wisest and most outstanding people and cultures")
                    }
                    .padding()
                }
                .padding()
                
                
                HStack(spacing: 20) {
                    Image(systemName: "book.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.accentColor)
                    
                        .opacity(show ? 1 : 0)
                        .offset(y: show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.show = true }
                    
                    VStack(alignment: .leading, spacing: 3) {
                        OnboardingBold(text: "What I get for my payment?")
                        DescriptionText(text: "Inspiration and enlightenment! You can unlock a particular one or all collections in App.")
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
                LinkText(text: "Already a member? Restore purchase here")
            }
            .padding()
            
            
            WidgetNoteText(text: "It's a one-time payment - you keep purchased items forever.")
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
