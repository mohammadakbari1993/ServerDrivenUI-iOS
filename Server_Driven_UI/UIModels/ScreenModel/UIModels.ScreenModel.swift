//
//  UIModels.ScreenModel.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation



extension MyApp.UIModels {
    struct ScreenModel : Decodable {
        var pageTitle : String?
        var components : [MyApp.UIModels.ScreenModel.Component]
    }
}

extension MyApp.UIModels.ScreenModel {
    struct Component : Decodable {
        
        var type : MyApp.Components.ComponentsType
        var data : [String:Any]
        
        private enum CodingKeys : CodingKey {
            case type
            case data
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.type = try container.decode(MyApp.Components.ComponentsType.self, forKey: .type)
            self.data = try container.decode(JSON.self, forKey: .data).value as! [String:Any]
        }
        
    }
}
