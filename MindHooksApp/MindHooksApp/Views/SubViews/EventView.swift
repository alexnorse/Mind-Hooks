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
            .padding()
            .background(Color("viewColor"))
            .cornerRadius(20)
            .shadow(color: .gray.opacity(0.7), radius: 10, x: 1, y: 7)
        }
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
