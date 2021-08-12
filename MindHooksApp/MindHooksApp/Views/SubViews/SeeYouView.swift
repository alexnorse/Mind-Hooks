//
//  SeeYouView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/10/21.
//

import SwiftUI

struct SeeYouView: View {
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            VStack(alignment: .leading){
                
                AccentText(text: Descriptions.allForToday)
                    .animation(Animation.easeIn(duration: AnimationSettings.duration).delay(AnimationSettings.firstDelay))
                    .shadow(color: .gray.opacity(ShadowSettings.opacity),
                            radius: ShadowSettings.radius,
                            x: ShadowSettings.x,
                            y: ShadowSettings.y)
                    .padding(UInumbers.padding)
                
                DescriptionText(text: Descriptions.seeYouTomorrow)
                    .animation(Animation.easeIn(duration: AnimationSettings.duration).delay(AnimationSettings.secondDelay))
                    .padding(UInumbers.padding)
            }
            .animation(.spring())
            .padding()
            
        }
        .background(LogoView().opacity(0.3))
    }
}

struct SeeYouView_Previews: PreviewProvider {
    static var previews: some View {
        SeeYouView()
    }
}
