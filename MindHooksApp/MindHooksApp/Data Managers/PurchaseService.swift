//
//  PurchaseService.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 11/7/21.
//

import Foundation
import Purchases

class PurchaseService: ObservableObject {
    
    @Published var salePackages = [Purchases.Package]()
    
    init() { addAvailablePackages() }
    
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
    
    
    func addAvailablePackages() {
        Purchases.shared.offerings { offerings, error in
            
            if let offerings = offerings {
                let offer = offerings.current
                let packages = offer?.availablePackages
                
                guard packages != nil else { return }
                
                for i in 0...packages!.count - 1 {
                    let package = packages![i]
                    self.salePackages.append(package)
                    
                    let product = package.product
                    let title = product.localizedTitle
                    let price = product.price
                    var duration = ""
                    
                    let subscriptionPeriod = product.subscriptionPeriod
                    
                    switch subscriptionPeriod!.unit {
                    case SKProduct.PeriodUnit.month:
                        duration = "\(subscriptionPeriod!.numberOfUnits) Month"
                        
                    case SKProduct.PeriodUnit.year:
                        duration = "\(subscriptionPeriod!.numberOfUnits) Year"
                        
                    default:
                        duration = ""
                    }
                }
            }
        }
    }
    
}

