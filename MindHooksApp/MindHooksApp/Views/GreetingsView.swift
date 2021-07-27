//
//  GreetingsView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/27/21.
//

import SwiftUI

struct GreetingsView: View {
    
    var body: some View {
        
        ZStack {
            Color("viewColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .shadow(color: .blue.opacity(0.5), radius: 30, x: 10, y: 10)
                
                GreetingText(text: "Good morning!")
            }
            .padding()
        }

    }
}

struct GreetingsView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsView()
    }
}
