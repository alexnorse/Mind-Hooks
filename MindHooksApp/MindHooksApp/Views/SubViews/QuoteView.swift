//
//  QuoteView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/27/21.
//

import SwiftUI

struct QuoteView: View {
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            ViewShape()
            VStack(alignment: .leading) {
                CategoryText(text: CategoryHeads.quote)
                AccentText(text: "Hello world")
                DescriptionText(text: "Hello world")
            }
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
