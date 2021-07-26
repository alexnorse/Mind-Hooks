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
                    VStack(alignment: .leading) {
                        CategoryText(text: CategoryHeads.word)
                        AccentText(text: "Hello world")
                        DescriptionText(text: "Hello world")
                    }
                }
                .padding()
                .animation(Animation.easeOut.delay(0.1))
                
                
                ZStack(alignment: .leading) {
                    ViewShape()
                    VStack(alignment: .leading) {
                        CategoryText(text: CategoryHeads.quote)
                        AccentText(text: "Hello world")
                        DescriptionText(text: "Hello world")
                    }
                }
                .padding()
                .animation(Animation.easeOut.delay(0.2))
                
                
                ZStack(alignment: .leading) {
                    ViewShape()
                    VStack(alignment: .leading) {
                        CategoryText(text: CategoryHeads.event)
                        HStack(alignment: .center) {
                            ImageView(imageName: "placeholder")
                            DescriptionText(text: "Hello world")
                        }
                    }
                }
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
//            .preferredColorScheme(.dark)
    }
}
