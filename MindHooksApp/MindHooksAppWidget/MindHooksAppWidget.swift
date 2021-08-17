//
//  MindHooksAppWidget.swift
//  MindHooksAppWidget
//
//  Created by Alexandr L. on 8/15/21.
//

import WidgetKit
import SwiftUI

struct ModelEntry: TimelineEntry {
    let date: Date
    let quote: Quote
}


struct Provider: TimelineProvider {
    
    func placeholder(in context: Context) -> ModelEntry {
        ModelEntry(date: Date(), quote: Quote.placeholderQuote)
    }

    
    func getSnapshot(in context: Context, completion: @escaping (ModelEntry) -> ()) {
        let entry = ModelEntry(date: Date(), quote: Quote.placeholderQuote)
        completion(entry)
    }

    
    func getTimeline(in context: Context, completion: @escaping (Timeline<ModelEntry>) -> ()) {
        getQuote { modelData in
            let date = Date()
            let data = ModelEntry(date: date, quote: modelData)
            let nextUpdate = Calendar.current.date(byAdding: .hour, value: 24, to: date)
            let timeline = Timeline(entries: [data], policy: .after(nextUpdate!))
            completion(timeline)
        }
    }
}


func getQuote(completion: @escaping (Quote) -> ()) {
    let url = URL(string: URLs.quoteAPI)
    
    let task = URLSession.shared.dataTask(with: url!) { data, _, error in
        if let error = error {
            print(error.localizedDescription)
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let quote = try decoder.decode(Quote.self, from: data!)
            completion(quote)
        } catch {
            print(error.localizedDescription)
        }
    }
    task.resume()
}



struct MindHooksAppWidgetEntryView : View {
    
    var entry: ModelEntry
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color("Orange")
            
            Image("PlaceholderGray")
                .resizable()
                .scaledToFit()
                .opacity(0.35)

            VStack(alignment: .leading) {
                WidgetCategoryText(text: CategoryHeads.widget)
                
                WidgetBodyText(text: entry.quote.content)
                    .fixedSize(horizontal: false, vertical: true)
                
                WidgetNoteText(text: entry.quote.author)
            }
        }
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
        .supportedFamilies([.systemSmall])
    }
}



struct MindHooksAppWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MindHooksAppWidgetEntryView(entry: ModelEntry(date: Date(), quote: Quote.placeholderQuote))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
        }
    }
}
