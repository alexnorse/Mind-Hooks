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
        ZStack(alignment: .leading)  {
            
            VStack(alignment: .leading, spacing: UInumbers.spacing)  {
                    CategoryText(text: CategoryHeads.quote)
                    
                    AccentText(text: viewModel.quote)
                    
                    DescriptionText(text: viewModel.author)
                }
                .animation(.spring())
                .padding()
        }
        .background(GrayLogoView().opacity(UInumbers.backLogoOpacity))
        
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
