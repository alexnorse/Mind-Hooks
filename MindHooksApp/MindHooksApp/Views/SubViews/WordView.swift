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
            VStack(alignment: .leading) {
                CategoryText(text: CategoryHeads.word)
                AccentText(text: viewModel.word)
                DescriptionText(text: viewModel.definition)
            }
            .background(Color("view"))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 20, x: 20, y: 20)
            .onAppear { viewModel.getWord() }
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
