//
//  CollectionCell.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionCell: View {
    
    let collection: Category
    
    var body: some View {
        
        HStack {
            CollectionImage(name: collection.artwork)
            
            VStack(spacing: 3) {
                AccentText(text: collection.category)
                DescriptionText(text: collection.description)
            }
            .padding()
        }
        
    }
}

struct CollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCell(collection: MockCollection.sample)
    }
}
