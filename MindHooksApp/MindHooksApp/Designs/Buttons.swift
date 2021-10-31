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
            LinkText(text: "See more")
            CenteredLink(text: "See more")
        }
        
    }
}


struct OnboardingButton: View {
    
    var label: String
    
    var body: some View {
        
        Text(label)
            .font(.callout)
            .fontWeight(.bold)
            .frame(width: 200, height: 50)
            .foregroundColor(.white)
            .background(Color.accentColor)
            .clipShape(Capsule())
    }
}


struct LinkText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.callout)
            .underline()
            .foregroundColor(Color.accentColor)
            .frame(maxWidth: 330, alignment: .leading)
        
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.2))
            .onAppear { self.show = true }
    }
}


struct CenteredLink: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .underline()
            .foregroundColor(Color.accentColor)
            .frame(maxWidth: 330, alignment: .center)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
