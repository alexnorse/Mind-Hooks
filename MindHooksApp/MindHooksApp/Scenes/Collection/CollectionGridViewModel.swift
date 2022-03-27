//
//  CollectionGridViewModel.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 11/5/21.
//

import SwiftUI

final class CollectionGridViewModel: ObservableObject {
    
    var selectedCollection: Category? {
        didSet {
            isShowingQuoteList = true
        }
    }
    
    @Published var isShowingQuoteList = false
}


