//
//  LogoView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/10/21.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        VStack {
            GrayLogoView()
            OrangeLogoView()
        }
    }
}


struct GrayLogoView: View {
    
    @State private var isVisible = false
    
    var body: some View {
        Image("PlaceholderGray")
            .resizable()
            .scaledToFill()
            .frame(width: ImageSize.width, height: ImageSize.height)
            .scaleEffect(isVisible ? AnimationSettings.scaleStart : AnimationSettings.scaleFinish)
            .padding()
            
            .onAppear { withAnimation(.spring(response: AnimationSettings.duration,
                                              dampingFraction: 0.2,
                                              blendDuration: 0)) {self.isVisible.toggle()} }
    }
}


struct OrangeLogoView: View {
    
    @State private var isVisible = false
    
    var body: some View {
        Image("PlaceholderOrange")
            .resizable()
            .scaledToFill()
            .frame(width: ImageSize.width, height: ImageSize.height)
            .scaleEffect(isVisible ? AnimationSettings.scaleStart : AnimationSettings.scaleFinish)
            .padding()
            
            .onAppear { withAnimation(.spring(response: AnimationSettings.duration,
                                              dampingFraction: 0.2,
                                              blendDuration: 0)) {self.isVisible.toggle()} }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
