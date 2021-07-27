//
//  ViewShape.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import SwiftUI

struct ViewShape: View {
    var body: some View {
        VStack {
            
        }
        .frame(width: 375, height: 200)
        .background(Color("viewColor"))
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 2, y: 2)
    }
}

struct ViewShape_Previews: PreviewProvider {
    static var previews: some View {
        ViewShape()
//            .preferredColorScheme(.dark)
    }
}