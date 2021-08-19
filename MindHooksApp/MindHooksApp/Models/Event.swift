//
//  Event.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/7/21.
//

import Foundation

struct Event: Codable {
    let date: String
    let data: PartEv
}

struct PartEv: Codable {
    let Events: [TodayEvent]
}

struct TodayEvent: Codable {
    let year: String
    let text: String
    let links: [WikiLinks]
}

struct WikiLinks: Codable {
    let link: String
}
