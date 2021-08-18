//
//  GreetingsLogo.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/12/21.
//

import SwiftUI

struct GreetingsLogo: View {
    
    @State private var isVisible = false
    
    var body: some View {
        Image("PlaceholderOrange")
            .resizable()
            .scaledToFill()
            .frame(width: ImageSize.width - 50, height: ImageSize.height - 50)
            .scaleEffect(isVisible ? AnimationSettings.scaleStart : AnimationSettings.scaleFinish)
            .padding()
            
            .onAppear { withAnimation(.spring(response: AnimationSettings.duration,
                                              dampingFraction: 0.2,
                                              blendDuration: 0)) {self.isVisible.toggle()}
            }
            
            .shadow(color: .gray.opacity(ShadowSettings.opacity),
                    radius: ShadowSettings.radius,
                    x: ShadowSettings.x,
                    y: ShadowSettings.y)
    }
}

struct GreetingsLogo_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsLogo()
    }
}
