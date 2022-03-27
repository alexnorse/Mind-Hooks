//
//  SwiftUIView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 12/31/21.
//

import SwiftUI

struct Paywall: View {
     
     @StateObject var viewModel = CollectionViewModel()
     @StateObject var package = PurchaseService()
     @State var show: Bool = false
     @State private var showSafari: Bool = false
     @Environment(\.presentationMode) var presentationMode
     
     var body: some View {
          VStack(alignment: .center, spacing: 10) {
               OnboardingHeadline(text: "Get all features!")
                    .padding()
               
               VStack(spacing: -UInumbers.spacing) {
                    PaywallSub(type: .first)
                    PaywallSub(type: .second)
               }
               
               Button {
                    viewModel.buyMonthlySubscription()
                    presentationMode.wrappedValue.dismiss()
               } label: {
                    OnboardingButton(label: package.monthlySubscription)
               }
               
               Button {
                    viewModel.buyAnnualSubscription()
                    presentationMode.wrappedValue.dismiss()
               } label: {
                    OnboardingButton(label: package.annualSubscription)
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
          .padding(25)
          
     }
}


struct SwiftUIView_Previews: PreviewProvider {
     static var previews: some View {
          Paywall()
     }
}
