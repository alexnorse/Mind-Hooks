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
    
    
    func convertHour() -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "H:mm"
        return Int(formatter.string(from: self))!
    }
}