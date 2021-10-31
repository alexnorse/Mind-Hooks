//
//  Buttons.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct Buttons: View {
    
    var body: some View {
        
        VStack {
            OnboardingButton(label: "Get started")
        }
        
    }
}


struct OnboardingButton: View {
    
    var label: String
    @State var show: Bool = false
    
    var body: some View {
        
        Text(label)
            .font(.callout)
            .fontWeight(.bold)
            .frame(width: 200, height: 50)
            .foregroundColor(.white)
            .background(Color.accentColor)
            .clipShape(Capsule())
        
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.2))
            .onAppear { self.show = true }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
