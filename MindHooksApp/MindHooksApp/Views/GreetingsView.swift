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
                .background(CircleView())
            
            
            VStack {
                GreetingsAccentText(text: Descriptions.greetings)
                    .padding(10)
                GreetingsDescriptionText(text: Descriptions.startDay)
            }
            .offset(y: UInumbers.offsetY + 150)
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 12 Pro Max")
    }
}
