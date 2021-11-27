//
//  Constants.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import UIKit

var date = Date()


enum subscriptionProductIds {
    static let entitlementName  = "allaccess"
    static let monthly          = "mh_099_1m"
    static let annual           = "mh_799_1y"
}


enum CategoryHeads {
    static let word  = "\(date.convertToday())\nWord of the day"
    static let quote = "\(date.convertToday())\nThought of the day"
    static let event = "\(date.convertToday())\nThis day in history"
}


enum OnboardingHeads {
    static let first  = "Inspire your day"
    static let second = "Drive your mind"
    static let third  = "Experience that matters"
}


enum OnboardingDescriptions {
    static let first  = "Get the daily updates: quotes, words, and historical events"
    static let second = "Personality development through the most influential experience"
    static let third  = "Learn more from the greatest minds in the world!"
}


enum PurchaseHeads {
    static let first  = "Unlock Collections"
    static let second = "Read and save"
}


enum PurchaseDescriptions {
    static let first   = "Get the most outstanding people's thoughts"
    static let second  = "Inspire your day and keep close the favorite quotes"
    static let restore = "Restore subscription"
    static let cancel  = "No Commitment. Cancel Anytime."
    static let privacy = "https://github.com/alexnorse/SupportRepo/blob/main/Mind%20Hooks%20Privacy%20Policy"
    static let terms   = "https://github.com/alexnorse/SupportRepo/blob/main/Mind%20Hooks%20Terms%20%26%20Conditions"
}


enum Descriptions {
    static let eventLink = "See more"
    static let restore   = "Restore purchases"
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
    static let widgetSmall: CGFloat  = 28
    static let widgetMedium: CGFloat = 150
    static let onboarding: CGFloat   = 40
    static let collection: CGFloat   = 80
}
