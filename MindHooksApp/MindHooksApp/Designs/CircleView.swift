//
//  CircleView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/20/21.
//

import SwiftUI

struct CircleView: View {
    
    @State private var isVisible = false
    
    var body: some View {
        Circle()
            .foregroundColor(Color.gray)
            .opacity(0.2)
            .frame(width: 300, height: 300)
            
            .opacity(isVisible ? 1 : 0)
            .offset(y: isVisible ? 0 : 20)
            
            .shadow(color: Color.gray.opacity(0.6), radius: 25, x: 0, y: 10)
            .shadow(color: Color.gray.opacity(1), radius: 5, x: 0, y: 10)
            
            .animation(Animation.easeOut(duration: 0.5).delay(0.2))
            .onAppear { self.isVisible.toggle() }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
