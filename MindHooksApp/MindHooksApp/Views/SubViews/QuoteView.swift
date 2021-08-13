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
                    .padding(UInumbers.padding)
                
                AccentText(text: viewModel.quote)
                    .shadow(color: .gray.opacity(ShadowSettings.opacity),
                            radius: ShadowSettings.radius,
                            x: ShadowSettings.x,
                            y: ShadowSettings.y)
                    .padding(UInumbers.padding)
                
                DescriptionText(text: viewModel.author)
                    .padding(UInumbers.padding)
            }
            .animation(.spring())
            .padding()
            
        }
        .background(LogoView().opacity(0.3))
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
