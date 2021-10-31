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
    
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
            .frame(width: ImageSizes.collection, height: ImageSizes.collection)
            .padding(-5)
    }
}

struct ImageViews_Previews: PreviewProvider {
    static var previews: some View {
        ImageViews()
    }
}
