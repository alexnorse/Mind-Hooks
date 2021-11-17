//
//  PurchaseView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct PurchaseView: View {
    
    @StateObject var viewModel = CollectionViewModel()
    @StateObject var package = PurchaseService()
    @State var show: Bool = false
    @State private var showSafari: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
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
                    viewModel.buyMonthlySubscription()
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    OnboardingButton(label: package.monthlySubscription)
                }
            }
            
            
            if viewModel.allaccess == false {
                Button {
                    viewModel.buyAnnualSubscription()
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    OnboardingButton(label: package.annualSubscription)
                }
            }
            
            
            if viewModel.allaccess == false {
                Button {
                    viewModel.restoreSubscription()
                } label: {
                    OnboardingButton(label: PurchaseDescriptions.restore)
                }
            }
            
            
            NoteText(text: PurchaseDescriptions.cancel)
                .padding(20)
            
            Link("Privacy Policy", destination: URL(string: PurchaseDescriptions.privacy)!)
            Link("Terms & Conditions", destination: URL(string: PurchaseDescriptions.terms)!)
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
