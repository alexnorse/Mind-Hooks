//
//  WordView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/27/21.
//

import SwiftUI

struct WordView: View {
    
    @StateObject var viewModel = WordViewModel()
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            VStack(alignment: .leading) {
                CategoryText(text: CategoryHeads.word)
                AccentText(text: viewModel.word)
                DescriptionText(text: viewModel.definition)
            }
            .background(Color.blue)
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.5), radius: 13, x: 2, y: 4)
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
