//
//  Event.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/7/21.
//

import Foundation

struct Events: Codable {
    let events: [Model]
}

struct Model: Codable {
    let year: String
    let description: String
    let wikipedia: [Wikipedia]
}

struct Wikipedia: Codable {
    let wikipedia: String
}
