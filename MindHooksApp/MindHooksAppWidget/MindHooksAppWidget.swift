//
//  MindHooksAppWidget.swift
//  MindHooksAppWidget
//
//  Created by Alexandr L. on 8/15/21.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    
    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    
    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}




struct SimpleEntry: TimelineEntry {
    let date: Date
}



struct MindHooksAppWidgetEntryView : View {
    var entry: Provider.Entry
    
    @State private var viewModel = QuoteViewModel()

    var body: some View {
        ZStack {
            Color("Orange")
            Image("PlaceholderGray")
                .resizable()
                .scaledToFit()
                .opacity(0.2)
            
            VStack(alignment: .leading) {
                WidgetCategoryText(text: CategoryHeads.quote)
                WidgetBodyText(text: viewModel.quote)
                WidgetBodyText(text: viewModel.author)
            }
        }
        .onAppear { viewModel.getQuote() }
    }
}



@main
struct MindHooksAppWidget: Widget {
    let kind: String = "MindHooksAppWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            MindHooksAppWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Mind Hooks")
        .description("Add Quote of the Day as widget")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}



struct MindHooksAppWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MindHooksAppWidgetEntryView(entry: SimpleEntry(date: Date()))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            
            MindHooksAppWidgetEntryView(entry: SimpleEntry(date: Date()))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
        }
    }
}
