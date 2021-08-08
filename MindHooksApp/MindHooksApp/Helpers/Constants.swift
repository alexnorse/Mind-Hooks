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
    static let word     = "Word of the day"
    static let quote    = "Quote of the day"
    static let event    = "This day in history"
}


enum TernaryDescription {
    static let todayError   = "No Data for today"
}


enum URLs {
    static let wordAPI  = "https://random-words-api.vercel.app/word"
    static let quoteAPI = "https://api.quotable.io/random"
    static let eventAPI = "https://byabbe.se/on-this-day/\(Day.today.convertForEventURL())/events.json"
}


enum ViewsSizes {
    static let textWidth: CGFloat   = 350
}
