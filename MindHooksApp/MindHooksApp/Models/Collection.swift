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
