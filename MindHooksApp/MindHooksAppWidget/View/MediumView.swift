//
//  MediumView.swift
//  MindHooksAppWidgetExtension
//
//  Created by Alexandr on 3/13/22.
//

import SwiftUI
import WidgetKit

struct MediumView : View {
     var entry: ModelEntry
     
     var body: some View {
          ZStack(alignment: .center) {
               Color("Orange")
               
               HStack {
                    Image("hooksWhite")
                         .resizable()
                         .scaledToFit()
                         .frame(width: ImageSizes.widgetMedium, height: ImageSizes.widgetMedium)
                    
                    VStack(alignment: .leading, spacing: 5) {
                         WidgetBodyText(text: entry.quote.content)
                         WidgetNoteText(text: entry.quote.author)
                    }
               }
               .padding(.all)
          }
     }
}


