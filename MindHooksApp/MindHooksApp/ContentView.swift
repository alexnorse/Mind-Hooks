//
//  ContentView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
        
                ZStack(alignment: .leading) {
                    ViewShape()
                    VStack {
                        CategoryText(text: CategoryHeads.word)
                        AccentText(text: "Hello world")
                        DescriptionText(text: "Hello world")
                    }
                }
                .padding()
                
                
                ZStack(alignment: .leading) {
                    ViewShape()
                    VStack {
                        CategoryText(text: CategoryHeads.quote)
                        AccentText(text: "Hello world")
                        DescriptionText(text: "Hello world")
                    }
                }
                .padding()
                
                
                ZStack(alignment: .leading) {
                    ViewShape()
                    VStack {
                        CategoryText(text: CategoryHeads.event)
                        HStack {
                            ImageView(imageName: "placeholder")
                            DescriptionText(text: "Hello world")
                        }
                    }
                }
                .padding()
                
            }
            
            .navigationTitle("XX of Month")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
