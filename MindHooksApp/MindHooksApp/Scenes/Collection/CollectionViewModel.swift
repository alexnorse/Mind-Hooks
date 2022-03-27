//
//  CollectionViewModel.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import Foundation
import Purchases

final class CollectionViewModel: ObservableObject {
    
    @Published var categories = [Category]()
    @Published var alertItem: Alerts?
    @Published var allaccess = false
    
    
    init() {
        getCollection()
        checkActiveSubscriptions()
    }
    
    
    func getCollection() {
        guard let path = Bundle.main.path(forResource: "content", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let _ = error {
                self.alertItem = AlertContext.unableToComplete
                return
            }
            
            guard let _ = response else {
                self.alertItem = AlertContext.invalidResponse
                return
            }
            
            guard let data = data else {
                self.alertItem = AlertContext.invalidData
                return
            }
            
            do {
                let result = try JSONDecoder().decode([Category].self, from: data)
                DispatchQueue.main.async { self.categories = result }
                
            } catch {
                print(error)
            }
        }
        .resume()
    }
    
    
    func checkActiveSubscriptions() {
        Purchases.shared.purchaserInfo { (info, error) in
            if info?.entitlements[subscriptionProductIds.entitlementName]?.isActive == true {
                self.allaccess = true
            }
            
            if let err = error as NSError? {
                print("Message: \(err.localizedDescription)")
            }
            
        }
    }
    
    
    func buyMonthlySubscription() {
        PurchaseService.purchase(productId: subscriptionProductIds.monthly) {
            self.allaccess = true
        }
    }
    
    
    func buyAnnualSubscription() {
        PurchaseService.purchase(productId: subscriptionProductIds.annual) {
            self.allaccess = true
        }
    }
    
}
