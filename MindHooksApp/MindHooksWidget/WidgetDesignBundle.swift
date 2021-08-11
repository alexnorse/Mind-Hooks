//
//  WidgetDesignBundle.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/11/21.
//

import SwiftUI

struct WidgetDesignBundle: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            WidgetCategoryText(text: "Quote of the day")
            WidgetAccentText(text: "Lorem ipsum")
            WidgetDescriptionText(text: "Hemingway")
        }
        .padding(50)
        .background(Color("orange"))
    }
}


struct WidgetCategoryText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.footnote)
            .fontWeight(.regular)
            .foregroundColor(Color.white)
            .frame(alignment: .leading)
            .textCase(.uppercase)
            .lineLimit(2)
            .padding()
    }
}


struct WidgetAccentText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .frame(alignment: .leading)
            .padding()
    }
}


struct WidgetDescriptionText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.regular)
            .foregroundColor(Color.white)
            .frame(alignment: .trailing)
            .padding()
    }
}


struct WidgetDesignBundle_Previews: PreviewProvider {
    static var previews: some View {
        WidgetDesignBundle()
    }
}
