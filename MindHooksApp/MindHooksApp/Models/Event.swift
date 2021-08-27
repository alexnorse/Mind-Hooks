//
//  Event.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/7/21.
//

import Foundation

struct Event: Codable {
    let events: [TodayEvent]
}

struct TodayEvent: Codable {
    let year: String
    let description: String
    let wikipedia: [Wikipedia]
}

struct Wikipedia: Codable {
    let wikipedia: String
}
