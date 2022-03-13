//
//  ImageViews.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct ImageViews: View {
    
    var body: some View {
        VStack {
            CollectionImage(name: "hooksOrange")
            OnboardingImage(name: "swift")
            LogoSmall(name: "hooksOrange")
        }
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


struct OnboardingImage: View {
    var name: String
    
    var body: some View {
        Image(systemName: name)
            .resizable()
            .scaledToFit()
            .frame(width: ImageSizes.onboarding, height: ImageSizes.onboarding)
            .foregroundColor(.accentColor)
    }
}


struct LogoSmall: View {
    var name: String
    
    var body: some View { 
        Image(name)
            .resizable()
            .scaledToFit()
            .frame(width: ImageSizes.onboarding, height: ImageSizes.onboarding)
            .foregroundColor(.accentColor)
    }
}


struct ImageViews_Previews: PreviewProvider {
    static var previews: some View {
        ImageViews()
    }
}
