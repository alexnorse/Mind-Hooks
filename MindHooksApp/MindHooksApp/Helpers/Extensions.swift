//
//  Extensions.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/28/21.
//

import Foundation

extension Date {
    
    func convertToday() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMMM d"
        return formatter.string(from: self)
    }
    
    
    func convertForEventURL() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "M/d"
        return formatter.string(from: self)
    }
}
