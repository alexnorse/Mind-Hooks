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
          ModelEntry(date: .now, quote: Quote.placeholderQuote)
     }
     
     
     func getSnapshot(in context: Context, completion: @escaping (ModelEntry) -> ()) {
          Task {
               do {
                    let quote = try await WidgetService.shared.fetchWidget()
                    let entry = ModelEntry(date: .now, quote: quote)
                    completion(entry)
               } catch {
                    completion(ModelEntry(date: .now, quote: Quote.placeholderQuote))
               }
          }
     }
     
     
     func getTimeline(in context: Context, completion: @escaping (Timeline<ModelEntry>) -> ()) {
          Task {
               do {
                    let quote = try await WidgetService.shared.fetchWidget()
                    let entry = ModelEntry(date: .now, quote: quote)
                    let nextUpdate = Calendar.current.date(byAdding: .hour, value: 4, to: date)
                    let timeline = Timeline(entries: [entry], policy: .after(nextUpdate ?? .now))
                    completion(timeline)
               } catch {
                    let entry = ModelEntry(date: .now, quote: Quote.placeholderQuote)
                    let timeline = Timeline(entries: [entry], policy: .after(.now.advanced(by: 60 * 60 * 30)))
                    completion(timeline)
               }
          }
     }
}
