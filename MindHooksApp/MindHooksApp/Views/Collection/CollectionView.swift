//
//  CollectionView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionView: View {
    
    @StateObject var viewModel = CollectionViewModel()
    
    var body: some View {
        
        ZStack {
            NavigationView {
                
                List(viewModel.categories) { category in
                    CollectionCell(collection: category)
                }
                .listStyle(.plain)
                .listRowInsets(.none)
                .navigationTitle("Collection")
            }
        }
        .animation(.spring())
        
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView()
    }
}
