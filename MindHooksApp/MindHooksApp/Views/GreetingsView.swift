//
//  GreetingsView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/12/21.
//

import SwiftUI

struct GreetingsView: View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                ZStack {
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                        .blur(radius: 5)
                        .frame(width: 350, height: 350)
                    
                    VStack(alignment: .center, spacing: 1) {
                        GreetingsLogo()
                            .offset(y: UInumbers.offsetY + 110)
                        
                        AccentText(text: Descriptions.greetings)
                            .offset(y: UInumbers.offsetY + 90)
                        
                        DescriptionText(text: Descriptions.startDay)
                            .offset(y: UInumbers.offsetY + 95)
                    }
                    .offset(y: UInumbers.offsetY)
                }
                
                NavigationLink(
                    destination: MainView(), label: {
                        DescriptionText(text: Descriptions.navlink)
                            .frame(width: 150, height: 50, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.accentColor)
                            .cornerRadius(30)
                            .shadow(color: .gray.opacity(ShadowSettings.opacity),
                                    radius: ShadowSettings.radius,
                                    x: ShadowSettings.x,
                                    y: ShadowSettings.y)
                    })
                    .offset(y: UInumbers.navlinkY)
                    
                    .navigationBarHidden(true)
            }
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
            .preferredColorScheme(.light)
    }
}
