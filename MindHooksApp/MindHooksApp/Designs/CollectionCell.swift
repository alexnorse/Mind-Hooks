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
        HStack(spacing: 7) {
            CollectionImage(name: collection.artwork)
                .shadow(color: .gray, radius: 10, x: 5, y: 5)
                .padding()
            
            VStack(spacing: 3) {
                AccentText(text: collection.category)
                DescriptionText(text: collection.description)
            }
            .padding()
        }
        .frame(width: 365, height: 100)
        .foregroundColor(Color.primary)
        
    }
}

struct CollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCell(collection: MockCollection.sample)
    }
}
