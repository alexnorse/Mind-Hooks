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
                ScrollView {
                    VStack {
                        
                        WordView()
                            .padding(10)
                        
                        QuoteView()
                            .padding(10)
                        
                        EventView()
                            .padding(10)
                        
                    }
                }
            }
            .animation(.spring())
            .navigationTitle("\(today.convertToday())")
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.light)
    }
}
