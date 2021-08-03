//
//  EventView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/27/21.
//

import SwiftUI

struct PhotoView: View {
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            ImageView()
            VStack(alignment: .leading) {
                CategoryText(text: CategoryHeads.photo)
                HStack(alignment: .center) {
                    DescriptionText(text: "Hello world")
                }
            }
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
