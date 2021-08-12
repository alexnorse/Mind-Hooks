//
//  GreetingsLogo.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/12/21.
//

import SwiftUI

struct GreetingsLogo: View {
    var body: some View {
        Image("PlaceholderOrange")
            .resizable()
            .scaledToFill()
            .frame(width: 230, height: 230)
            .shadow(color: .gray.opacity(ShadowSettings.opacity),
                    radius: ShadowSettings.radius,
                    x: ShadowSettings.x,
                    y: ShadowSettings.y)
    }
}

struct GreetingsLogo_Previews: PreviewProvider {
    static var previews: some View {
        GreetingsLogo()
    }
}
