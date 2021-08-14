//
//  GreetingsView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/12/21.
//

import SwiftUI

struct GreetingsView: View {
    
    @State private var isVisible = false
    @State private var showMainView = false
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.gray)
                .opacity(0.1)
                .blur(radius: 9)
                .frame(width: 350, height: 350)
                
                .opacity(isVisible ? 1 : 0)
                .offset(y: isVisible ? 0 : 20)
                .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                .onAppear { self.isVisible.toggle() }
            
            VStack(alignment: .center, spacing: 5) {
                GreetingsLogo()
                    .offset(y: UInumbers.offsetY + 100)
                
                GreetingsAccentText(text: Descriptions.greetings)
                GreetingsDescriptionText(text: Descriptions.startDay)
                
                VStack {
                    Button(action: { showMainView.toggle()},
                           label: {GreetingsButton()})
                }
                .fullScreenCover(isPresented: $showMainView,
                       content: {MainView()})
                .offset(y: UInumbers.offsetY + 300)
            }
            .offset(y: UInumbers.offsetY + 50)
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
            .preferredColorScheme(.light)
    }
}
