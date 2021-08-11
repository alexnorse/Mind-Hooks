//
//  MindHooksWidget.swift
//  MindHooksWidget
//
//  Created by Alexandr L. on 8/11/21.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}


struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}




struct MindHooksWidgetEntryView : View {
    
    var entry: Provider.Entry
    @StateObject var viewModel = QuoteViewModel()
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color("orange")

            VStack(alignment: .leading, spacing: 10) {

                WidgetCategoryText(text: CategoryHeads.quote)
                WidgetAccentText(text: viewModel.quote)
                WidgetDescriptionText(text: viewModel.author)

            }
            .onAppear { viewModel.getQuote() }
        }
    }
}




@main
struct MindHooksWidget: Widget {
    let kind: String = "MindHooksWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            MindHooksWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Mind Hooks")
        .description("Quote of the day")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}



struct MindHooksWidget_Previews: PreviewProvider {
    static var previews: some View {
        MindHooksWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
        
        MindHooksWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
