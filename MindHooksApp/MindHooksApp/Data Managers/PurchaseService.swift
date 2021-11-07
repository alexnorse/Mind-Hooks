//
//  PurchaseService.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 11/7/21.
//

import Foundation
import Purchases

class PurchaseService {
    
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
    
}
