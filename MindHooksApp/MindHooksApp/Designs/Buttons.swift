//
//  Buttons.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        OnboardingButton(label: "Get started")
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

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
