//
//  EventView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/7/21.
//

import SwiftUI

struct EventView: View {
    
    @StateObject var viewModel = EventViewModel()
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                
                CategoryText(text: CategoryHeads.event)
                
                AccentText(text: "Year \(viewModel.year)")
                    .animation(Animation.easeIn(duration: AnimationSettings.duration).delay(AnimationSettings.firstDelay))
                    .shadow(color: .gray.opacity(ShadowSettings.opacity),
                            radius: ShadowSettings.radius,
                            x: ShadowSettings.x,
                            y: ShadowSettings.y)
                
                DescriptionText(text: viewModel.description)
                    .animation(Animation.easeIn(duration: AnimationSettings.duration).delay(AnimationSettings.secondDelay))
            }
            .animation(.spring())
            .padding()
            
        }
        .background(LogoView())
        .onAppear { viewModel.getEvent() }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
