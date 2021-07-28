//
//  ContentView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/25/21.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var wordViewModel = WordViewModel()
    @State private var word: Word?
    
    @State private var today = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                
                WordView(word: word ?? MockData.wordMock)
                    .onAppear { wordViewModel.getWord() }
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
