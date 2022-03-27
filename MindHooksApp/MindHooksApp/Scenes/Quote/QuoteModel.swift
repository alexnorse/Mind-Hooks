//
//  Quote.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import Foundation

struct Quote: Codable {
    let content: String
    let author: String
    
    static let placeholderQuote = Quote(content: "Non est ad astra mollis e terris via", author: "Seneca")
}


struct DailyQuote: Codable {
    let quoteBody: String
    let quoteAuthor: String
}
