//
//  LogoView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/10/21.
//

import SwiftUI

struct LogoView: View {
    
    @State private var isVisible = false
    
    var body: some View {
        Image("Logo")
            .resizable()
            .scaledToFill()
            .frame(width: 175, height: 175)
            .opacity(0.15)
            .scaleEffect(isVisible ? 1.2 : 0.9)
            .padding()
            .onAppear { withAnimation(.spring(response: AnimationSettings.duration,
                                              dampingFraction: 0.2,
                                              blendDuration: 0)) {
                                              self.isVisible.toggle()}}
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
