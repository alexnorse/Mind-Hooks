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
                PurchaseFirst()
                PurchaseSecond()
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
                CenteredLink(text: Descriptions.restore)
            }
            .padding()
            
            
            NoteText(text: Descriptions.paymentDetails)
                .padding()
            
        }
        .opacity(show ? 1 : 0)
        .offset(y: show ? 0 : 20)
        .animation(Animation.easeOut(duration: 0.5).delay(0.3))
        .onAppear { self.show = true }
        .padding()
    }
}


struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
    }
}
