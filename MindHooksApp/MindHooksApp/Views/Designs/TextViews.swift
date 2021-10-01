//
//  TextViews.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import SwiftUI

struct TextViews: View {
    var body: some View {
        VStack(spacing: 20) {
            CategoryText(text: "Quote of the day")
            AccentText(text: "Lorem Ipsum")
            DescriptionText(text: "E. Hemingway")
            
            LinkText(text: "See more")
            
            WidgetBodyText(text: "Lorem Ipsum")
            WidgetNoteText(text: "Da Vinci")
        }
        .padding()
    }
}


struct CategoryText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.callout)
            .fontWeight(.light)
            .foregroundColor(.gray)
            .textCase(.uppercase)
            .frame(maxWidth: 330, alignment: .leading)
            .multilineTextAlignment(.leading)
            
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.2))
            .onAppear { self.show = true }
    }
}


struct AccentText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(Color.accentColor)
            .frame(maxWidth: 330, alignment: .leading)
            
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.3))
            .onAppear { self.show = true }
    }
}


struct DescriptionText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.callout)
            .fontWeight(.regular)
            .frame(maxWidth: 330, alignment: .leading)
            
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.4))
            .onAppear { self.show = true }
    }
}


struct LinkText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.callout)
            .underline()
            .foregroundColor(Color.accentColor)
            .frame(maxWidth: 330, alignment: .leading)
            
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.4))
            .onAppear { self.show = true }
    }
}


struct WidgetBodyText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.caption2)
            .fontWeight(.medium)
            .foregroundColor(.white)
            .multilineTextAlignment(.leading)
            .lineLimit(6)
    }
}


struct WidgetNoteText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.caption2)
            .fontWeight(.regular)
            .foregroundColor(.white)
            .multilineTextAlignment(.leading)
            .lineLimit(2)
    }
}


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextViews()
                .preferredColorScheme(.dark)
        }
    }
}
