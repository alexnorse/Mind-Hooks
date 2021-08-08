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
                AccentText(text: "In the \(viewModel.year)")
                DescriptionText(text: viewModel.description)
            }
            .background(Color("view"))
            .cornerRadius(20)
            .shadow(color: .gray, radius: 20, x: 20, y: 20)
            .onAppear { viewModel.getEvent() }
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
