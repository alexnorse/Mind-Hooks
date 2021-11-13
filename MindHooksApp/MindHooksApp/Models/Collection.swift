//
//  Collection.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id = UUID()
    let category: String
    let artwork: String
    let description: String
    let quotes: [CollectionQuote]
}

struct CollectionQuote: Codable, Identifiable {
    let id = UUID()
    let quote: String
    let source: String
}


struct MockCollection {
    static let sample = Category(category: "Sample category",
                                 artwork: "",
                                 description: "Lorem ipsum",
//                                 productId: "",
                                 quotes: [CollectionQuote(quote: "Non est ad astra mollis e terris via", source: "Seneca")])
    
    static let sampleQuote = CollectionQuote(quote: "Non est ad astra mollis e terris via", source: "Seneca")
}
