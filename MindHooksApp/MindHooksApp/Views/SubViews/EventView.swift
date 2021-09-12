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
            
            VStack(alignment: .leading, spacing: UInumbers.spacing) {
                CategoryText(text: CategoryHeads.event)
                
                AccentText(text: "\(viewModel.year)")
                
                DescriptionText(text: viewModel.description)
                
                LinkText(text: Descriptions.eventLink)
                    .onTapGesture { showSafari.toggle() }
                    .fullScreenCover(isPresented: $showSafari,
                                     content: { SFSafariViewWrapper(
                                     url: (URL(string: viewModel.link) ?? URL(string:URLs.wikiURL)!)) })
            }
            .animation(.spring())
            .padding()
            
        }
        .background(LogoView().opacity(UInumbers.backLogoOpacity))
        
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
