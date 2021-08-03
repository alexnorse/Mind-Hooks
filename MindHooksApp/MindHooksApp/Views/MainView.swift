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
                    .padding(6)
                
                
                QuoteView()
                    .animation(Animation.easeOut.delay(0.2))
                    .padding(6)
                
                
                PhotoView()
                    .animation(Animation.easeOut.delay(0.3))
                    .padding(6)
                
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
