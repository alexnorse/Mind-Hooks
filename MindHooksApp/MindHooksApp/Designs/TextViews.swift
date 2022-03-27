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
            CategoryText(text: "Lorem Ipsum")
            AccentText(text: "Lorem Ipsum")
            DescriptionText(text: "Lorem Ipsum")
            DescriptionBold(text: "Lorem Ipsum")
            OnboardingHeadline(text: "Lorem Ipsum")
            OnboardingBold(text: "Lorem Ipsum")
            NoteText(text: "Lorem Ipsum")
            WidgetBodyText(text: "Lorem Ipsum")
            WidgetNoteText(text: "Lorem Ipsum")
        }
        .padding()

    }
}


struct CategoryText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.medium)
            .foregroundColor(.gray)
            .textCase(.uppercase)
            .frame(maxWidth: 330, alignment: .leading)
            .multilineTextAlignment(.leading)
    }
}


struct AccentText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color.accentColor)
            .frame(maxWidth: 330, alignment: .leading)
    }
}


struct DescriptionText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .fontWeight(.regular)
            .frame(maxWidth: 330, alignment: .leading)
    }
}


struct DescriptionBold: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .fontWeight(.bold)
            .frame(maxWidth: 330, alignment: .trailing)
    }
}


struct OnboardingHeadline: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.accentColor)
            .frame(maxWidth: 330, alignment: .center)
    }
}


struct OnboardingBold: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .fontWeight(.bold)
            .frame(maxWidth: 330, alignment: .leading)
    }
}


struct NoteText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.regular)
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .lineLimit(2)
    }
}


struct WidgetBodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.caption)
            .fontWeight(.medium)
            .foregroundColor(.white)
            .multilineTextAlignment(.leading)
            .lineLimit(5)
    }
}


struct WidgetNoteText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.caption)
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
