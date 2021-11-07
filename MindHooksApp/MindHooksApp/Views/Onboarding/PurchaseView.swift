//
//  PurchaseView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct PurchaseView: View {
    
    @StateObject var viewModel = CollectionViewModel()
    @State var show: Bool = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            
            OnboardingHeadline(text: "Unlock Collections")
                .padding()
            
            VStack(spacing: -UInumbers.spacing) {
                PurchaseFirst()
                PurchaseSecond()
            }
            
            
            if viewModel.allaccess == false {
                Button {
                    // viewModel.buyMonthlySubscription()
                } label: {
                    OnboardingButton(label: "Monthly subscription")
                }
            }
            
            
            if viewModel.allaccess == false {
                Button {
                    // viewModel.buyAnnualSubscription()
                } label: {
                    OnboardingButton(label: "Annual subscription")
                }
            }
            
            
            NoteText(text: PurchaseDescriptions.cancel)
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
