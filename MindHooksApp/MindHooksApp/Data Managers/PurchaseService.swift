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
            }
        }
    }
    
    
    func getPackages() {
        Purchases.shared.offerings { offerings, error in
            self.monthlySubscription = "\(String(describing: offerings?.current?.monthly)) Monthly"
            self.annualSubscription = "\(String(describing: offerings?.current?.annual)) Annual"
        }
    }
    
}

