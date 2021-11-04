//
//  QuoteList.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct QuoteList: View {
   
    @StateObject var viewModel = CollectionViewModel()
    
    var body: some View {
        
        ZStack {
            
            List(viewModel.categories) { category in
                CollectionQuoteCell(collection: category)
            }
            .listStyle(.plain)
            .listRowInsets(.none)
            .navigationTitle("Collection")
        }
        .onAppear { viewModel.getCollection() }
    
    }
}

struct QuoteList_Previews: PreviewProvider {
    static var previews: some View {
        QuoteList()
    }
}
