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
                
                AccentText(text: viewModel.word)
                    .animation(Animation.easeIn(duration: AnimationSettings.duration).delay(AnimationSettings.firstDelay))
                    .shadow(color: .gray.opacity(ShadowSettings.opacity),
                            radius: ShadowSettings.radius,
                            x: ShadowSettings.x,
                            y: ShadowSettings.y)
                
                DescriptionText(text: viewModel.definition)
                    .animation(Animation.easeIn(duration: AnimationSettings.duration).delay(AnimationSettings.secondDelay))
            }
            .animation(.spring())
            .padding()
            
        }
        .background(LogoView())
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
