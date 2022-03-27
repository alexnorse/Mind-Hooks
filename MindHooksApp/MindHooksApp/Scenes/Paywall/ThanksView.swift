//
//  ThanksView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 12/31/21.
//

import SwiftUI

struct ThanksView: View {
    
    @State var show: Bool = false
    
    var body: some View {
        VStack(alignment: .center) {
            PurchaseSuccess()
        }
        .opacity(show ? 1 : 0)
        .offset(y: show ? 0 : 20)
        .animation(Animation.easeOut(duration: 0.5).delay(0.3))
        .onAppear { self.show = true }
        .padding(25)
    }
}


struct ThanksView_Previews: PreviewProvider {
    static var previews: some View {
        ThanksView()
    }
}
