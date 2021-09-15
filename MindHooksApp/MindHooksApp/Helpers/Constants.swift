//
//  Constants.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import UIKit

enum CategoryHeads {
    static let word   = "Word of the day"
    static let quote  = "Quote of the day"
    static let event  = "This day in history"
}


enum Descriptions {
    static let greetings = "Inspire your day\nDrive your mind"
    static let startDay  = "(tap logo to Start)"
    static let navlink   = "Start"
    static let eventLink = "See more"
}

    
enum TernaryDescription {
    static let todayError = "There's no data for today 😔"
}


enum URLs {
    static let wordAPI       = "https://api.wordnik.com/v4/words.json/"
    static let wordAPIKey    = "o5sk37fr2vj4secdpon64ty4pvab7ndh8js0axjbqqqc9srjg"
    
    static let dailyQuoteAPI = "https://www.quotepub.com/api/widget/?type=qotd_t"
    static let quoteAPI      = "https://api.quotable.io/random?maxLength=110"

    static let eventAPI      = "https://byabbe.se/on-this-day/\(Day.today.dateForEvent())/events.json"
    static let wikiURL       = "https://www.wikipedia.org"
}


enum UInumbers {
    static let padding: CGFloat         = 15
    static let spacing: CGFloat         = 25
    static let offsetY: CGFloat         = -75
    static let navlinkY: CGFloat        = 150
}
