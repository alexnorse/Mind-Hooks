//
//  Event.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 7/26/21.
//

import Foundation


struct Photo: Codable {
    let id: String
    let description: String?
    let urls: PostURLs
}


struct PostURLs: Codable {
    let regular: String
}
