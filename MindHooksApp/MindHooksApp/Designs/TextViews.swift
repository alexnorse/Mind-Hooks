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
    @State var show: Bool = false
    
    var body: some View {
        Text(text)
            .font(.headline)
            .fontWeight(.regular)
            .foregroundColor(.gray)
            .textCase(.uppercase)
            .frame(alignment: .leading)
            
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
            .frame(alignment: .leading)
        
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
            .frame(alignment: .leading)
        
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
