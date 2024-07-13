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
        var components : [Component]
    }
}

extension MyApp.UIModels.ScreenModel {
    struct Component : Decodable {
        var type : MyApp.Components.ComponentsType
        var data : ComponentsData
    }
}

extension MyApp.UIModels.ScreenModel.Component {
    struct ComponentsData : Decodable {
        var imageUrl : String?
    }
}
