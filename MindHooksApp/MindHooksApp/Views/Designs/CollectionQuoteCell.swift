//
//  CollectionQuoteCell.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionQuoteCell: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Image("hooksOrange")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .padding(-5)
            
            DescriptionText(text: "Friends, Romans, countrymen, lend me your ears; I come to bury Caesar, not to praise him")
            DescriptionBold(text: "Julius Caesar")
        }
        .padding()
        
    }
}


struct CollectionQuoteCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionQuoteCell()
    }
}
