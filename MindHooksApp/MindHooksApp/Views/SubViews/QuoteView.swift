//
//  QuoteView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/27/21.
//

import SwiftUI

struct QuoteView: View {
    
    @StateObject var viewModel = QuoteViewModel()
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            ViewShape()
            VStack(alignment: .leading) {
                CategoryText(text: CategoryHeads.quote)
                AccentText(text: viewModel.quote)
                DescriptionText(text: viewModel.author)
            }
            .onAppear { viewModel.getQuote() }
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
