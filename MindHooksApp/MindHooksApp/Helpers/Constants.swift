//
//  Constants.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import UIKit

struct Day {
    static let today = Date()
}


enum CategoryHeads {
    static let word  = "Word of the day"
    static let quote = "Quote of the day"
    static let event = "This day in history"
}


enum Descriptions {
    static let allForToday    = "That's all for today!"
    static let seeYouTomorrow = "See you tomorrow 😉"
}

    
enum TernaryDescription {
    static let todayError = "No Data for today"
}


enum URLs {
    static let wordAPI  = "https://random-words-api.vercel.app/word"
    static let quoteAPI = "https://api.quotable.io/random"
    static let eventAPI = "https://byabbe.se/on-this-day/\(Day.today.convertForEventURL())/events.json"
}


enum ViewsSizes {
    static let textWidth: CGFloat = 330
}


enum UInumbers {
    static let padding: CGFloat = 15
    static let offsetY: CGFloat = -75
}


enum ShadowSettings {
    static let opacity: Double  = 1.5
    static let radius: CGFloat  = 13
    static let x: CGFloat       = 1
    static let y: CGFloat       = 7
}


enum AnimationSettings {
    static let duration     = 0.6
    static let firstDelay   = 0.1
    static let secondDelay   = 0.3
}
