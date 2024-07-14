//
//  WebServiceProtocol.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/14/24.
//

import Foundation

protocol NetworkService {
    func load<T: Decodable>(resource : String, model : T.Type) async throws -> T
}
