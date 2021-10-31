//
//  CollectionQuoteCell.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionQuoteCell: View {
    
    @State var show: Bool = false
    let collection: Category
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Image("hooksOrange")
                .resizable()
                .scaledToFit()
                .frame(width: ImageSizes.onboarding, height: ImageSizes.onboarding, alignment: .center)
                .padding(-5)
            
            DescriptionText(text: collection.quotes.first!.quote)
            DescriptionBold(text: collection.quotes.last!.source)
        }
        .opacity(show ? 1 : 0)
        .offset(y: show ? 0 : 20)
        .animation(Animation.easeOut(duration: 0.5).delay(0.3))
        .onAppear { self.show = true }
        .padding()
        
    }
}


struct CollectionQuoteCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionQuoteCell(collection: MockCollection.sample)
    }
}
