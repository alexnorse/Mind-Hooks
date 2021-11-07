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
    @Published var userPurchases = [String : Bool]()
    
    init() { getCollection() }
    
    func getCollection() {
        guard let path = Bundle.main.path(forResource: "content", ofType: "json") else { return }
        let url = URL(fileURLWithPath: path)
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let _ = error {
                print("First error")
                return
            }
            
            guard let _ = response else {
                print("Response error")
                return
            }
            
            guard let data = data else {
                print("Data error")
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
    
    
    func makePurchase(collection: Category) {
        
        PurchaseService.purchase(productId: collection.productId) {
            if collection.productId != nil {
                self.userPurchases[collection.productId!] = true
            }
        }
        
    }
    
}
