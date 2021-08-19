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
        formatter.dateFormat = "MMMM, d"
        return formatter.string(from: self)
    }

    
    func yyyyMMdd() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: self)
    }
}
