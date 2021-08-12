//
//  WordView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/27/21.
//

import SwiftUI
import UIKit

struct WordView: View {
    
    @StateObject var viewModel = WordViewModel()
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            VStack(alignment: .leading){
                
                CategoryText(text: CategoryHeads.word)
                    .padding(UInumbers.padding)
                
                AccentText(text: viewModel.word)
                    .shadow(color: .gray.opacity(ShadowSettings.opacity),
                            radius: ShadowSettings.radius,
                            x: ShadowSettings.x,
                            y: ShadowSettings.y)
                    .padding(UInumbers.padding)
                
                DescriptionText(text: viewModel.definition)
                    .padding(UInumbers.padding)
            }
            .animation(.spring())
            .padding()
            
        }
        .background(LogoView().opacity(0.3))
        .onAppear { viewModel.getWord() }
        
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView()
    }
}
