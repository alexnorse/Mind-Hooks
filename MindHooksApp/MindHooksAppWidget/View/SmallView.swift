//
//  SmallView.swift
//  MindHooksAppWidgetExtension
//
//  Created by Alexandr on 3/13/22.
//

import SwiftUI
import WidgetKit

struct SmallView : View {
     var entry: ModelEntry
     
     var body: some View {
          ZStack(alignment: .center) {
               Color("Orange")
               
               VStack(alignment: .leading, spacing: 5) {
                    Image("hooksWhite")
                         .resizable()
                         .scaledToFit()
                         .frame(width: ImageSizes.widgetSmall, height: ImageSizes.widgetSmall)
                         .padding(-5)
                    
                    Spacer()
                    
                    WidgetBodyText(text: entry.quote.content)
                    WidgetNoteText(text: entry.quote.author)
               }
               .padding()
          }
     }
}

