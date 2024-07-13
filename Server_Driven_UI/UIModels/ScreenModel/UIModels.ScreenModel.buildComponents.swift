//
//  UIModels.ScreenModel.buildComponents.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation

extension MyApp.UIModels.ScreenModel {
    func buildCompnents() throws -> [UIComponent] {
        
        var components : [UIComponent] = []
        
        for index in self.components {
            switch index.type {
            case .featuredImage:
                guard let model : MyApp.Components.FeaturedImageComponent.Model = index.data.Decode() else {
                    throw MyApp.Components.ComponentsError.decodingError
                }
                components.append(MyApp.Components.FeaturedImageComponent(uiModel: model))
            }
        }
        
        return components
    }
}
