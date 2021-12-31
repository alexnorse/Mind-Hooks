//
//  CollectionView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionView: View {
    
    @StateObject var viewModel = CollectionViewModel()
    @StateObject var gridViewModel = CollectionGridViewModel()
    @State private var showingSheet = false
    @ObservedObject var sheetNavigator = SheetNavigator()
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        
        ZStack {
            NavigationView {
                ScrollView {
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(viewModel.categories) { category in
                            CollectionCell(collection: category)
                                .onTapGesture { gridViewModel.selectedCollection = category
                                    showingSheet = true
                                }
                        }
                        .listStyle(.plain)
                        .listRowInsets(.none)
                        .navigationTitle("Collections")
                        .sheet(isPresented: $showingSheet) { sheetNavigator.destination.view(
                            
                            paywall: viewModel.allaccess ? QuoteList(collection: gridViewModel.selectedCollection ?? MockCollection.sample).toAnyView() : PurchaseView().toAnyView(),
                            
                            quotes: viewModel.allaccess ? QuoteList(collection: gridViewModel.selectedCollection ?? MockCollection.sample).toAnyView() : PurchaseView().toAnyView()
                        )}
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
