//
//  GreetingsView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/12/21.
//

import SwiftUI

struct GreetingsView: View {
    
    @State private var isVisible = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                ZStack {
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.1)
                        .blur(radius: 5)
                        .frame(width: 350, height: 350)
                    
                        .opacity(isVisible ? 1 : 0)
                        .offset(y: isVisible ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                        .onAppear { self.isVisible.toggle() }
                    
                    VStack(alignment: .center, spacing: 1) {
                        GreetingsLogo()
                            .offset(y: UInumbers.offsetY + 120)
                        
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
            }
            .navigationBarHidden(true)
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
            .preferredColorScheme(.light)
    }
}
