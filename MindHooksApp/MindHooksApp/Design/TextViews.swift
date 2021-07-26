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
            GreetingText(text: "Greetings")
            CategoryText(text: "Quote of the day")
            AccentText(text: "Lorem Ipsum")
            DescriptionText(text: "E. Hemingway")
            SmallerText(text: "Veni, vidi, vici")
        }
    }
}


struct GreetingText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
            .padding()
    }
}


struct CategoryText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(.gray)
            .font(.subheadline)
            .fontWeight(.light)
            .multilineTextAlignment(.leading)
            .textCase(.uppercase)
            .padding()
    }
}


struct AccentText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.semibold)
            .multilineTextAlignment(.leading)
            .padding()
    }
}


struct DescriptionText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .fontWeight(.regular)
            .multilineTextAlignment(.trailing)
            .padding()
    }
}


struct SmallerText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.regular)
            .multilineTextAlignment(.leading)
            .padding()
    }
}


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        TextViews()
    }
}
