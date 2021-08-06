//
//  ImageView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/6/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("placeholder")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300, alignment: .trailing)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
