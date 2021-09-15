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
            
            VStack(alignment: .leading, spacing: UInumbers.spacing) {
                CategoryText(text: CategoryHeads.word)
                AccentText(text: viewModel.word)
                DescriptionText(text: viewModel.definition)
            }
            .animation(.spring())
            .padding()
        }
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
