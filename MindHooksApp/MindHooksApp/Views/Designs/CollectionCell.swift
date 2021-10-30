//
//  CollectionCell.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionCell: View {
    
    var body: some View {
        
        HStack {
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .scaledToFill()
            
            VStack(spacing: 3) {
                AccentText(text: "Marcus Aurelius")
                DescriptionText(text: "Thoughts one of the most intelligent Roman emperor")
            }
            .padding()
        }
        .padding()
        
    }
}

struct CollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCell()
    }
}
