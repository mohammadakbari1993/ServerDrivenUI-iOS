//
//  Carousel.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/14/24.
//

import Foundation
import SwiftUI

extension MyApp.Components {
    
    struct Carousel : UIComponent {
        
        var uiModel : MyApp.Components.Carousel.Model
        
        var uniqueID: String {
            return ComponentsType.carouselView.rawValue
        }
        
        func render() -> AnyView {
            MyApp.Components.Carousel.CarouselView(uiModel: uiModel).ToAnyView()
        }
        
    }
    
}
