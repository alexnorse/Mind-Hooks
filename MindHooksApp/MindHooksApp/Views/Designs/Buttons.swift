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
            OnboardingButton(label: "Start")
        }
        
    }
}


struct OnboardingButton: View {
    
    var label: String
    
    var body: some View {
        
        Text(label)
            .font(.callout)
            .fontWeight(.bold)
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.accentColor)
            .frame(width: 150, height: 50, alignment: .center)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
