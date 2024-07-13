//
//  Dictionary+Decode.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation

extension Dictionary {
    func Decode<T:Decodable>() -> T? {
        
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return nil
        }
        
        return try? JSONDecoder().decode(T.self, from: data)
        
    }
}
