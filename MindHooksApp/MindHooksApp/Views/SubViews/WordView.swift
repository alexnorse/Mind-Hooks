//
//  WordView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/27/21.
//

import SwiftUI

struct WordView: View {
    
    let word: Word
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            ViewShape()
            VStack(alignment: .leading) {
                CategoryText(text: CategoryHeads.word)
                AccentText(text: word.word)
                DescriptionText(text: word.definition)
            }
        }
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView(word: MockData.wordMock)
    }
}
