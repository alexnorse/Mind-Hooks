//
//  EventView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/7/21.
//

import SwiftUI
import SafariServices

struct EventView: View {
    
    @StateObject var viewModel = EventViewModel()
    @State private var showSafari: Bool = false
    @State var show: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                CategoryText(text: CategoryHeads.event)
                    .padding(UInumbers.padding)
                
                AccentText(text: "\(viewModel.year)")
                    .shadow(color: .gray.opacity(ShadowSettings.opacity),
                            radius: ShadowSettings.radius,
                            x: ShadowSettings.x,
                            y: ShadowSettings.y)
                    .padding(UInumbers.padding)
                
                DescriptionText(text: viewModel.description)
                    .padding(UInumbers.padding)
                
                LinkText(text: Descriptions.eventLink)
                    .onTapGesture { showSafari.toggle() }
                    .fullScreenCover(isPresented: $showSafari,
                                     content: { SFSafariViewWrapper(
                                        url: (URL(string: viewModel.link) ?? URL(string:URLs.wikiURL)!)) })
                    .padding(UInumbers.padding)
            }
            .animation(.spring())
            .padding()
            
        }
        .onAppear { viewModel.getEvent() }
        .background(LogoView().opacity(0.3))
        
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
