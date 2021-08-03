//
//  Word.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import Foundation

struct WordResult: Codable {
    let result: [Word]
}

struct Word: Codable {
    let word: String
    let definition: String
}
