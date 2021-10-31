//
//  Constants.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import UIKit

enum CategoryHeads {
    static let word  = "Word of the day"
    static let quote = "Thought of the day"
    static let event = "This day in history"
}


enum OnboardingHeads {
    static let first  = "Inspire your day"
    static let second = "Drive your mind"
    static let third  = "Experience that matter"
}


enum OnboardingDescriptions {
    static let first  = "Get the daily updates: quotes, words, and historical events"
    static let second = "Personality development through the most influential experience"
    static let third  = "Learn more from the greatest minds in the world!"
}


enum PurchaseHeads {
    static let first  = "What collections are the?"
    static let second = "What I get for my payment?"
}


enum PurchaseDescriptions {
    static let first  = "Brilliant thoughts of the wisest and most outstanding people and cultures"
    static let second = "Inspiration and enlightenment! You can unlock a particular one or all collections (including future updates)"
}


enum Descriptions {
    static let eventLink      = "See more"
    static let restore        = "Restore purchases"
    static let paymentDetails = "It's a one-time payment.\nYou keep all purchased items forever"
}

    
enum TernaryDescription {
    static let todayError = "There's no data for today 😔"
}


enum URLs {
    static let wordAPI       = "https://api.wordnik.com/v4/words.json/"
    static let wordAPIKey    = "o5sk37fr2vj4secdpon64ty4pvab7ndh8js0axjbqqqc9srjg"
    
    static let dailyQuoteAPI = "https://www.quotepub.com/api/widget/?type=qotd_t"
    static let quoteAPI      = "https://api.quotable.io/random?maxLength=100"

    static let eventAPI      = "https://byabbe.se/on-this-day/\(Day.today.dateForEvent())/events.json"
    static let wikiURL       = "https://www.wikipedia.org"
}


enum UInumbers {
    static let padding: CGFloat = 15
    static let spacing: CGFloat = 25
    static let offsetY: CGFloat = -75
}


enum ImageSizes {
    static let onboarding: CGFloat = 40
    static let collection: CGFloat = 90
}
