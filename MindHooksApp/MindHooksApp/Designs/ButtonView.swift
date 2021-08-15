//
//  ButtonView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/14/21.
//

import SwiftUI

struct ButtonView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            GreetingsButton()
        }
    }
}


struct GreetingsButton: View {
    
    var body: some View {
        Text("Start")
            .foregroundColor(.white)
            .font(.headline)
            .frame(width: 150, height: 50)
            .background(Color.accentColor)
            .cornerRadius(30)
            
            .shadow(color: .gray.opacity(ShadowSettings.opacity),
                    radius: ShadowSettings.radius,
                    x: ShadowSettings.x,
                    y: ShadowSettings.y)
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
