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
            let nextUpdate = Calendar.current.date(byAdding: .hour, value: 6, to: date)
            let timeline = Timeline(entries: [data], policy: .after(nextUpdate!))
            completion(timeline)
        }
    }
}


func getQuote(completion: @escaping (Quote) -> ()) {
    guard let url = URL(string: URLs.quoteAPI) else {
        print(MHErrors.invalidURL)
        return
    }
    
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        
        if let error = error {
            print(error.localizedDescription)
            return
        }
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            print(MHErrors.invalidResponse)
            return
        }
        
        guard let data = data else {
            print(MHErrors.invalidData)
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let quote = try decoder.decode(Quote.self, from: data)
            completion(quote)
        } catch {
            print(MHErrors.invalidData)
        }
    }
    task.resume()
}



struct MindHooksAppWidgetEntryView : View {
    
    var entry: ModelEntry
    @Environment(\.widgetFamily) var widgetFamily
    
    var body: some View {
        
        ZStack(alignment: .center) {
            Color("Orange")
            
            VStack(alignment: .leading, spacing: 5) {
                if widgetFamily == .systemSmall {
                    Image("hooksWhite")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding(-5)
                    Spacer()
                    WidgetBodyText(text: entry.quote.content)
                    WidgetNoteText(text: entry.quote.author)
                }
            }
            .padding()
            
            
            HStack {
                if widgetFamily == .systemMedium {
                    Image("hooksWhite")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 140)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        WidgetBodyText(text: entry.quote.content)
                        WidgetNoteText(text: entry.quote.author)
                    }
                }
            }
            .padding(.all)
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
        .description("Random quote")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}



struct MindHooksAppWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MindHooksAppWidgetEntryView(entry: ModelEntry(date: Date(), quote: Quote.placeholderQuote))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            
            MindHooksAppWidgetEntryView(entry: ModelEntry(date: Date(), quote: Quote.placeholderQuote))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
        }
    }
}
