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
                    .padding(UInumbers.padding)
                
                AccentText(text: "Year \(viewModel.year)")
                    .shadow(color: .gray.opacity(ShadowSettings.opacity),
                            radius: ShadowSettings.radius,
                            x: ShadowSettings.x,
                            y: ShadowSettings.y)
                    .padding(UInumbers.padding)
                
                DescriptionText(text: viewModel.description)
                    .padding(UInumbers.padding)
            }
            .animation(.spring())
            .padding()
            
        }
        .background(LogoView().opacity(0.3))
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
