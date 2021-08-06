//
//  GreetingsView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/27/21.
//

import SwiftUI

struct GreetingsView: View {
    
    @State private var isVisible = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                ZStack {
                    Color("viewColor")
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 30) {
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150, height: 150, alignment: .center)
                            .shadow(color: .blue.opacity(0.5), radius: 30, x: 10, y: 10)
                        
                        GreetingText(text: "Greetings!")
                    }
                    .scaleEffect(isVisible ? 1.05 : 0)
                    .padding()
                    .onAppear { withAnimation(.spring(response: 1.5,
                                                      dampingFraction: 0.5,
                                                      blendDuration: 4)) {
                        self.isVisible.toggle()
                        }
                    }
                }
            }
        }
    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
    }
}
