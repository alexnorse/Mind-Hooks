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
                .frame(width: 40, height: 40)
                .padding(-5)
            
                .opacity(show ? 1 : 0)
                .offset(y: show ? 0 : 20)
                .animation(Animation.easeOut(duration: 0.5).delay(0.4))
                .onAppear { self.show = true }
            
            DescriptionText(text: collection.quotes.first!.quote)
            DescriptionBold(text: collection.quotes.last!.source)
        }
        .padding()
        
    }
}


struct CollectionQuoteCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionQuoteCell(collection: MockCollection.sample)
    }
}
