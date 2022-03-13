//
//  SheetNavigator.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 11/13/21.
//

import SwiftUI

class SheetNavigator: ObservableObject {
    
    @Published var destination: Destination = .quotes
    
    enum Destination: CaseIterable {
        case paywall
        case quotes
        
        @ViewBuilder
        func view(paywall: AnyView, quotes: AnyView) -> some View {
             switch self {
             case .paywall:
                 paywall
             case .quotes:
                 quotes
            }
        }
    }
    
}
