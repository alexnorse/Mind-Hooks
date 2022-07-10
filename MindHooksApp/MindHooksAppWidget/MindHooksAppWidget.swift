//
//  MindHooksAppWidget.swift
//  MindHooksAppWidget
//
//  Created by Alexandr L. on 8/15/21.
//

import WidgetKit
import SwiftUI

@main
struct MindHooksAppWidget: Widget {
    let kind: String = "MindHooksAppWidget"
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            MindHooksAppWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Mind Hooks")
        .description("Random quote")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}
