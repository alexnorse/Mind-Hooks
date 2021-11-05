//
//  QuoteList.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct QuoteList: View {
   
    let collection: Category
    
    var body: some View {
        
        ZStack {
            
            List(collection.quotes) { category in
                CollectionQuoteCell(collection: category)
            }
            .listStyle(.plain)
            .listRowInsets(.none)
        }
    
    }
}

struct QuoteList_Previews: PreviewProvider {
    static var previews: some View {
        QuoteList(collection: MockCollection.sample)
    }
}
