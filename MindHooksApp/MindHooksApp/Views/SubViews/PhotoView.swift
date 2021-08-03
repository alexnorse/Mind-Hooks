//
//  EventView.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/27/21.
//

import SwiftUI

struct PhotoView: View {
    
    @StateObject var viewModel = PhotoViewModel()
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            ImageView()
            VStack(alignment: .leading) {
                CategoryText(text: CategoryHeads.photo)
                HStack(alignment: .center) {
                    DescriptionText(text: viewModel.description)
                }
            }
        }
        .onAppear { viewModel.getPhoto() }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
