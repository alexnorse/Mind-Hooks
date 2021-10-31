//
//  CollectionQuoteCell.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionQuoteCell: View {
    
    let collection: Category
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            LogoSmall(name: "hooksOrange")
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
