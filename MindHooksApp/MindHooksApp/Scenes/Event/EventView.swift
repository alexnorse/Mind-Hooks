//
//  EventView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/7/21.
//

import SwiftUI
import SafariServices

struct EventView: View {
    
    @StateObject var viewModel = EventViewModel(api: API.shared)
    @State private var showSafari: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            VStack(alignment: .leading, spacing: UInumbers.spacing) {
                
                CategoryText(text: CategoryHeads.event)
                AccentText(text: "\(viewModel.year)")
                DescriptionText(text: viewModel.description)
                
                LinkText(text: Descriptions.eventLink)
                    .onTapGesture { showSafari.toggle() }
                    .sheet(isPresented: $showSafari, content: {
                        SFSafariViewWrapper(url: (URL(string: viewModel.link) ?? URL(string:URLs.wikiURL)!)) })
            }
            .animation(.spring())
            .padding()
        }
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
