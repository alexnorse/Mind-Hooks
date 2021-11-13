//
//  Extensions.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/28/21.
//

import Foundation
import SwiftUI

struct Day {
    static var today: Date { Date() }
}


extension Date {
    
    func convertToday() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM, d"
        return formatter.string(from: self)
    }
    
    
    func dateForEvent() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "M/d"
        return formatter.string(from: self)
    }

    
    func yyyyMMdd() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: self)
    }
}


extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
