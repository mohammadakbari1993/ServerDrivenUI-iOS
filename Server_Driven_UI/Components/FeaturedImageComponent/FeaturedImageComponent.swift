//
//  FeaturedImageComponent.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation
import SwiftUI

extension MyApp.Components {
    
    struct FeaturedImageComponent : UIComponent {
        
        var uiModel : MyApp.Components.FeaturedImageComponent.Model
        
        var uniqueID: String {
            return ComponentsType.featuredImage.rawValue
        }
        
        func render() -> AnyView {
            AsyncImage(url: URL(string: uiModel.imageUrl)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
            }placeholder: {
                ProgressView()
            }.ToAnyView()
        }
        
    }
    
}
