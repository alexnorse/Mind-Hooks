//
//  Extensions.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/28/21.
//

import Foundation

struct Day {
    static let today = Date()
}


extension Date {
    
    func convertToday() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d"
        return formatter.string(from: self)
    }
    
    
    func convertForEventURL() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "M/d"
        return formatter.string(from: self)
    }
}
