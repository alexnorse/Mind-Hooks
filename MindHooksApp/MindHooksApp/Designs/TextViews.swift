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
            
            GreetingsAccentText(text: "Greetings")
            GreetingsDescriptionText(text: "Time for inspiration")
        }
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
            .foregroundColor(Color("orange"))
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
            .foregroundColor(Color("orange"))
        
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


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        TextViews()
    }
}
