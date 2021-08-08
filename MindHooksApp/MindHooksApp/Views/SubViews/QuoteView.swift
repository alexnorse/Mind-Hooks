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
            VStack(alignment: .leading)  {
                CategoryText(text: CategoryHeads.quote)
                AccentText(text: viewModel.quote)
                DescriptionText(text: viewModel.author)
            }
            .padding()
            .background(Color("viewColor"))
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.7), radius: 10, x: 1, y: 7)
        }
        .onAppear { viewModel.getQuote() }
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
