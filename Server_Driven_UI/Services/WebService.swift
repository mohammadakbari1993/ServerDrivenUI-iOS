//
//  WebService.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation

extension MyApp.Services {
    class WebService {
        
        func load(resource : String) async throws -> MyApp.UIModels.ScreenModel {
            
            guard let url = URL(string: resource) else {throw NetworkError.invalidUrl}
            
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {throw NetworkError.invalidServiceResponse}
            
            return try JSONDecoder().decode(MyApp.UIModels.ScreenModel.self, from: data)
            
        }
        
    }
}


