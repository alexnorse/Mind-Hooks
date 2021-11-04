//
//  CollectionView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionView: View {
    
    @StateObject var viewModel = CollectionViewModel()
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        
        ZStack {
            NavigationView {
                ScrollView {
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.categories) { category in
                            CollectionCell(collection: category)
                        }
                        .listStyle(.plain)
                        .listRowInsets(.none)
                        .navigationTitle("Collection")
                    }
                    .padding()
                    
                }
            }
        }
        .onAppear { viewModel.getCollection() }
        
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
