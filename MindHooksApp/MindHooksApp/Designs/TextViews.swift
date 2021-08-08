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
            .font(.subheadline)
            .fontWeight(.regular)
            .foregroundColor(.gray)
            .frame(maxWidth: ViewsSizes.textWidth, alignment: .leading)
            .textCase(.uppercase)
            .padding(15)
    }
}


struct AccentText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color("orange"))
            .frame(alignment: .leading)
            .frame(maxWidth: ViewsSizes.textWidth, alignment: .leading)
            .padding(15)
    }
}


struct DescriptionText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .fontWeight(.regular)
            .italic()
            .frame(alignment: .trailing)
            .frame(maxWidth: ViewsSizes.textWidth, alignment: .leading)
            .padding(15)
    }
}


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        TextViews()
    }
}
