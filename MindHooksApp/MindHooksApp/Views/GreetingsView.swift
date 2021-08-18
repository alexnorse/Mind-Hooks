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
        VStack(alignment: .center) {
            Button(action: { showMainView.toggle()}, label: {GreetingsLogo()})
                .fullScreenCover(isPresented: $showMainView, content: {MainView()})
                .background(Circle()
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 300, height: 300)
                                
                                .opacity(isVisible ? 1 : 0)
                                .offset(y: isVisible ? 0 : 20)
                                .animation(Animation.easeOut(duration: 0.5).delay(0.2))
                                .onAppear { self.isVisible.toggle() })
            
            VStack {
                GreetingsAccentText(text: Descriptions.greetings)
                    .padding(10)
                GreetingsDescriptionText(text: Descriptions.startDay)
            }.offset(y: UInumbers.offsetY + 150)
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
