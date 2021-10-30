//
//  CollectionCell.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 10/30/21.
//

import SwiftUI

struct CollectionCell: View {
    
    @State var show: Bool = false
    
    var body: some View {
        
        HStack {
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .scaledToFill()
            
                .opacity(show ? 1 : 0)
                .offset(y: show ? 0 : 20)
                .animation(Animation.easeOut(duration: 0.5).delay(0.4))
                .onAppear { self.show = true }
            
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
