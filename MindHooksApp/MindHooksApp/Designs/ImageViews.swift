//
//  ImageViews.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct ImageViews: View {
    var body: some View {
        CollectionImage(name: "hooksOrange")
    }
}

struct CollectionImage: View {
    
    var name: String
    @State var show: Bool = false
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .frame(width: ImageSizes.collection, height: ImageSizes.collection)
            .padding(-5)
        
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.2))
            .onAppear { self.show = true }
    }
}

struct ImageViews_Previews: PreviewProvider {
    static var previews: some View {
        ImageViews()
    }
}
