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
        var data : [String:String]
    }
}
