//
//  ContentView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/25/21.
//

import SwiftUI

struct MainView: View {
    
    @State private var today = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                
                WordView()
                    .animation(Animation.easeOut.delay(0.1))
                    .padding()
                
                
                QuoteView()
                    .animation(Animation.easeOut.delay(0.2))
                    .padding()
                
                
                EventView()
                    .onTapGesture { print("Lorem Ipsum") }
                    .animation(Animation.easeOut.delay(0.3))
                    .padding()
                
            }
            .navigationTitle("\(today.convertToday())")
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
