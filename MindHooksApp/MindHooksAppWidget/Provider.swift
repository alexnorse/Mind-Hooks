//
//  Provider.swift
//  MindHooksAppWidgetExtension
//
//  Created by Alexandr on 3/13/22.
//

import SwiftUI
import WidgetKit

struct Provider: TimelineProvider {
    
    func placeholder(in context: Context) -> ModelEntry {
        ModelEntry(date: Date(), quote: Quote.placeholderQuote)
    }
    
    
    func getSnapshot(in context: Context, completion: @escaping (ModelEntry) -> ()) {
        let entry = ModelEntry(date: Date(), quote: Quote.placeholderQuote)
        completion(entry)
    }
    
    
    func getTimeline(in context: Context, completion: @escaping (Timeline<ModelEntry>) -> ()) {
         API.shared.getQuote { modelData in
            let date = Date()
            let data = ModelEntry(date: date, quote: modelData)
            let nextUpdate = Calendar.current.date(byAdding: .hour, value: 6, to: date)
            let timeline = Timeline(entries: [data], policy: .after(nextUpdate!))
            completion(timeline)
        }
    }
}
