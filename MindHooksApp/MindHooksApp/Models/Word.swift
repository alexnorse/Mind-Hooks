//
//  Word.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import Foundation

struct Word: Codable {
    let word: String
    let definitions: [Definitions]
}

struct Definitions: Codable {
    let text: String
}
