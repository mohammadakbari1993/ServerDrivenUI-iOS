//
//  Urls.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation

extension MyApp.Utils.Constants {
    
    struct ScreenResources {
        
        static let baseUrl = "localhost:3000"
        static let pet_listing = "pet-listing"
        
        static func resource(for resourceName : String) -> URL? {
            var component = URLComponents()
            component.scheme = "http"
            component.percentEncodedHost = baseUrl
            component.path = "\(resourceName)"
            return component.url
        }
        
    }
    
    struct Urls {
        static let baseUrl = "http://localhost:3000"
        static let pet_listing = "\(baseUrl)/pet-listing"
    }
}
