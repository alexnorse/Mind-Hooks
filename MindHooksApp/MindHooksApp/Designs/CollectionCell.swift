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
            Image(collection.artwork)
                .resizable()
                .frame(width: ImageSizes.collection, height: ImageSizes.collection, alignment: .center)
                .scaledToFill()
            
                .opacity(show ? 1 : 0)
                .offset(y: show ? 0 : 20)
                .animation(Animation.easeOut(duration: 0.5).delay(0.4))
                .onAppear { self.show = true }
            
            VStack(spacing: 3) {
                AccentText(text: collection.category)
                DescriptionText(text: collection.description)
            }
            .padding()
        }
        .padding()
        
    }
}

struct CollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCell(collection: MockCollection.sample)
    }
}
