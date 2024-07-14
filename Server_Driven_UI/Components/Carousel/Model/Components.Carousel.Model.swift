//
//  CarouselViewComponent.Model.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/14/24.
//

import Foundation

extension MyApp.Components.Carousel {
    
    struct Model : Decodable {
        var imageUrls : [String]
        static let sample = MyApp.Components.Carousel.Model(imageUrls: [])
    }
    
}
