//
//  PurchaseView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/31/21.
//

import SwiftUI

struct PurchaseView: View {
    
    @StateObject var viewModel = CollectionViewModel()
    
    var body: some View {
        
        if viewModel.allaccess == false {
            Paywall()
        } else {
           ThanksView()
        }
    }
    
}



struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
    }
}
