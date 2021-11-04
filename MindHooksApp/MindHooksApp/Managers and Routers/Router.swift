//
//  Router.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 11/4/21.
//

import Foundation

class Router: ObservableObject {
    
    @Published var currentPage: String
    
    init () {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "onboarding"
        } else {
            currentPage = "main"
        }
    }
    
}
