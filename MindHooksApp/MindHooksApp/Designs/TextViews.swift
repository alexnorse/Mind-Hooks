//
//  TextViews.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import SwiftUI

struct TextViews: View {
    var body: some View {
        VStack {
            CategoryText(text: "Quote of the day")
            AccentText(text: "Lorem Ipsum")
            DescriptionText(text: "E. Hemingway")
        }
    }
}


struct CategoryText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .fontWeight(.regular)
            .foregroundColor(.gray)
            .frame(maxWidth: ViewsSizes.textWidth)
            .textCase(.uppercase)
    }
}


struct AccentText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(Color("orange"))
            .frame(maxWidth: ViewsSizes.textWidth)
    }
}


struct DescriptionText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.regular)
            .frame(maxWidth: ViewsSizes.textWidth)
    }
}


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        TextViews()
    }
}
