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
                .foregroundColor(.secondary)
                .opacity(0.1)
                .blur(radius: 2)
                .frame(width: 300, height: 300)
                
                .opacity(isVisible ? 1 : 0)
                .offset(y: isVisible ? 0 : 20)
                .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                .onAppear { self.isVisible.toggle() }
            
            VStack(alignment: .center) {
                GreetingsLogo()
                
                GreetingsAccentText(text: Descriptions.greetings)
                GreetingsDescriptionText(text: Descriptions.startDay)
                
                Button(action: { showMainView.toggle()}, label: {GreetingsButton()})
                    .fullScreenCover(isPresented: $showMainView, content: {MainView()})
            }
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
