//
//  CollectionCell.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionCell: View {
    
    @State var show: Bool = false
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
        .opacity(show ? 1 : 0)
        .offset(y: show ? 0 : 20)
        .animation(Animation.easeOut(duration: 0.5).delay(0.3))
        .onAppear { self.show = true }
        .padding()
        
    }
}

struct CollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCell(collection: MockCollection.sample)
    }
}
