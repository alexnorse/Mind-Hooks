//
//  PurchaseService.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 11/7/21.
//

import Foundation
import Purchases

class PurchaseService: ObservableObject {
    
    @Published var monthlySubscription: String = ""
    @Published var annualSubscription: String = ""
    
    init() { getPackages() }
    
    static func purchase(productId: String?, success: @escaping () -> Void) {
        guard productId != nil else { return }
        
        var skProduct: SKProduct?
        
        Purchases.shared.products([productId!]) { products in
            if !products.isEmpty {
                skProduct = products[0]
            }
            
            Purchases.shared.purchaseProduct(skProduct!) { (transaction, purchaseInfo, error, userCancelled) in
                
                if error == nil && !userCancelled {
                    success()
                }
                
                if let err = error as NSError? {
                    print("Message: \(err.localizedDescription)")
                }
            }
        }
    }
    
    
    func getPackages() {
        Purchases.shared.offerings { offerings, error in
            if let packages = offerings?.current?.availablePackages {
                self.monthlySubscription = "\(packages[0].localizedPriceString) Monthly"
                self.annualSubscription = "\(packages[1].localizedPriceString) Annual"
            }
            
            if let err = error as NSError? {
                print("Message: \(err.localizedDescription)")
            }
        }
    }
    
}

