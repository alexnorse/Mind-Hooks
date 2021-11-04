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
                .padding()
            
            VStack(spacing: 3) {
                AccentText(text: collection.category)
                DescriptionText(text: collection.description)
            }
            .padding()
        }
        .frame(width: 350, height: 140)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .gray, radius: 15, x: 5, y: 5)
        
    }
}

struct CollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCell(collection: MockCollection.sample)
    }
}
