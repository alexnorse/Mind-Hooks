//
//  UnsplashCall.swift
//  MindHooksApp
//
//  Created by Alexandr L. on 8/3/21.
//

import UIKit

fileprivate struct APIResponse: Codable {
    let result: Photo
}

final class UnsplashCall {
    
    static var shared = UnsplashCall()
    var accessKey = "vPkdAzDkBzov_ELqRpLK4fD96H2t4ZTUBD4zlTUZU6k"
    let session: URLSession

    
    init() {
        let configuration = URLSessionConfiguration.default
        session = URLSession(configuration: configuration)
    }
    
    
    private func components() -> URLComponents {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "api.unsplash.com"
        return components
    }
    
    
    private func request(url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.addValue("Client-ID \(accessKey)", forHTTPHeaderField: "Authorization")
        return request
    }
    
    
    func getPhoto(completion: @escaping (Result<Photo, APErrors>) -> Void) {
        
        var components = components()
        components.path = "/photos/random"
        
        let request = request(url: components.url!)
        
        let task = session.dataTask(with: request) { data, response, error in
            if let _ = error {
                completion(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let photo = try decoder.decode(Photo.self, from: data)
                completion(.success(photo))
            } catch {
                completion(.failure(.invalidData))
            }
             
        }
        task.resume()
    }
}
