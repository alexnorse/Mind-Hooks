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
            
            GreetingsAccentText(text: "Greetings")
            GreetingsDescriptionText(text: "Time for inspiration")
            LinkText(text: "See more")
            
            WidgetCategoryText(text: "Quote of the day")
            WidgetBodyText(text: "Lorem Ipsum")
        }
        .padding()
    }
}


struct CategoryText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.headline)
            .fontWeight(.regular)
            .foregroundColor(.gray)
            .textCase(.uppercase)
            .frame(maxWidth: 330, alignment: .leading)
            
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.2))
            .onAppear { self.show.toggle() }
    }
}


struct AccentText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(Color.accentColor)
            .frame(maxWidth: 330, alignment: .leading)
        
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.3))
            .onAppear { self.show.toggle() }
    }
}


struct DescriptionText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.regular)
            .frame(maxWidth: 330, alignment: .leading)
        
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.4))
            .onAppear { self.show.toggle() }
    }
}


struct GreetingsAccentText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(Color.accentColor)
        
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.3))
            .onAppear { self.show.toggle() }
    }
}


struct GreetingsDescriptionText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.regular)
        
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.4))
            .onAppear { self.show.toggle() }
    }
}


struct LinkText: View {
    
    var text: String
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.bold)
            .foregroundColor(Color.accentColor)
            .frame(maxWidth: 330, alignment: .leading)
            
            .opacity(show ? 1 : 0)
            .offset(y: show ? 0 : 20)
            .animation(Animation.easeOut(duration: 0.5).delay(0.4))
            .onAppear { self.show.toggle() }
    }
}


struct WidgetCategoryText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.regular)
            .foregroundColor(.white)
            .textCase(.uppercase)
            .padding()
    }
}


struct WidgetBodyText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
    }
}


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        TextViews()
            .preferredColorScheme(.dark)
    }
}
