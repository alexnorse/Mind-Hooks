//
//  WidgetView.swift
//  MindHooksAppWidgetExtension
//
//  Created by Alexandr on 3/13/22.
//

import SwiftUI
import WidgetKit

struct MindHooksAppWidgetEntryView : View {
    var entry: ModelEntry
    @Environment(\.widgetFamily) var widgetFamily
    
    var body: some View {
         switch widgetFamily {
         case .systemSmall:
              SmallView(entry: entry)
         case .systemMedium:
              MediumView(entry: entry)
         default:
              Text("Not implemented")
         }
    }
}

