//
//  CollectionQuoteCell.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionQuoteCell: View {
    let collection: CollectionQuote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            LogoSmall(name: "hooksOrange")
            DescriptionText(text: collection.quote)
            DescriptionBold(text: collection.source)
        }
        .padding()
        
    }
}


struct CollectionQuoteCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionQuoteCell(collection: MockCollection.sampleQuote)
    }
}
