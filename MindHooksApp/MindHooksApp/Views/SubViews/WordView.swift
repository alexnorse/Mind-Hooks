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
                DescriptionText(text: viewModel.definition)
            }
            .padding()
            .background(Color("viewColor"))
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.7), radius: 10, x: 1, y: 7)
        }
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
