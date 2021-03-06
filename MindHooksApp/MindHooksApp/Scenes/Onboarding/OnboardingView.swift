//
//  OnboardingView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct OnboardingView: View {
     
     @AppStorage("isOnboarding") var isOnboarding: Bool?
     @State var show: Bool = false
     
     var body: some View {
          VStack(alignment: .center, spacing: UInumbers.spacing - 10) {
               
               OnboardingHeadline(text: "Welcome!")
                    .padding()
               
               VStack(spacing: -UInumbers.spacing) {
                    OnboardingSub(number: .first)
                    OnboardingSub(number: .second)
                    OnboardingSub(number: .third)
               }
               
               Button { isOnboarding = false }
          label: { OnboardingButton(label: "Get started") }
                    .padding()
               
          }
          .opacity(show ? 1 : 0)
          .offset(y: show ? 0 : 20)
          .animation(Animation.easeOut(duration: 0.5).delay(0.3))
          .onAppear { self.show = true }
          .padding()
     }
}


struct OnboardingView_Previews: PreviewProvider {
     static var previews: some View {
          OnboardingView()
     }
}
