//
//  Event.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/7/21.
//

import Foundation

struct Events: Codable {
    let events: [Event]
}

struct Event: Codable {
    let year: String
    let description: String
}
