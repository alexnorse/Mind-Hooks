//
//  ContentView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/25/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var wordViewModel = WordViewModel()
    @State private var word: Word?
    
    var body: some View {
        NavigationView {
            VStack {
                
                WordView(word: word ?? MockData.wordMock)
                    .onAppear { wordViewModel.getWord() }
                    .padding()
                    .animation(Animation.easeOut.delay(0.1))
                
                
                QuoteView()
                    .padding()
                    .animation(Animation.easeOut.delay(0.2))
                
                
                EventView()
                    .onTapGesture { print("Lorem Ipsum") }
                    .padding()
                    .animation(Animation.easeOut.delay(0.3))
                
            }
            .navigationTitle("XX of Month")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
