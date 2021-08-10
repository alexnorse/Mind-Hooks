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
                    .animation(Animation.easeIn(duration: AnimationSettings.duration).delay(AnimationSettings.firstDelay))
                    .shadow(color: .gray.opacity(ShadowSettings.opacity),
                            radius: ShadowSettings.radius,
                            x: ShadowSettings.x,
                            y: ShadowSettings.y)
                
                DescriptionText(text: viewModel.author)
                    .animation(Animation.easeIn(duration: AnimationSettings.duration).delay(AnimationSettings.secondDelay))
            }
            .animation(.spring())
            .padding()
    
        }
        .background(LogoView())
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
