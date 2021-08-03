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
            ViewShape()
            VStack(alignment: .leading) {
                CategoryText(text: CategoryHeads.word)
                AccentText(text: viewModel.word)
                DescriptionText(text: viewModel.definition)
            }
        }
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView()
    }
}
