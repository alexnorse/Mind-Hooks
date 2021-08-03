//
//  ImageView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/3/21.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("")
            .resizable()
            .scaledToFill()
            .frame(width: 375, height: 230)
            .background(Color("viewColor"))
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.5), radius: 13, x: 2, y: 4)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
