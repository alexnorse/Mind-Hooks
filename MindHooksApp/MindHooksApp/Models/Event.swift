//
//  Event.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/7/21.
//

import Foundation

struct EventData: Codable {
    let url: String
    let data: [Events]
}

struct Events: Codable {
    let year: String
    let text: String
}
