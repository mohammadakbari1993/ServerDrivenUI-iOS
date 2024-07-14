//
//  WebService.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation

extension MyApp.Services {
    
    class WebService : NetworkService {
        
        func load<T: Decodable>(resource : String, model : T.Type) async throws -> T {
            
            guard let url = URL(string: resource) else {throw NetworkError.invalidUrl}
            
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {throw NetworkError.invalidServiceResponse}
            
            return try JSONDecoder().decode(model, from: data)
            
        }
        
    }
     
}


