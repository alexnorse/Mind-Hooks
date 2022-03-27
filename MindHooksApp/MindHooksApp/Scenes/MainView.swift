//
//  ContentView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/25/21.
//

import SwiftUI

struct MainView: View {
    
    @State private var currentTab = 0
    
    var body: some View {
        TabView {
            TabView(selection: $currentTab, content: {
                QuoteView()
                    .tag(0)
                    .offset(y: UInumbers.offsetY)
                    .padding(UInumbers.padding)
                
                WordView()
                    .tag(1)
                    .offset(y: UInumbers.offsetY)
                    .padding(UInumbers.padding)
                
                EventView()
                    .tag(2)
                    .offset(y: UInumbers.offsetY)
                    .padding(UInumbers.padding)
            })
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .padding()
            
                .tabItem {
                    Image(systemName: "calendar.circle.fill")
                    Text("Today") }
            
            
            CollectionView()
                .tabItem {
                    Image(systemName: "book.circle.fill")
                    Text("Collections") }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
