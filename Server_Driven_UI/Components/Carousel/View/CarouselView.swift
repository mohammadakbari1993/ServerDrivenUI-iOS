//
//  CarouselView.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/14/24.
//

import SwiftUI
extension MyApp.Components.Carousel {
    struct CarouselView: View {
        let uiModel : MyApp.Components.Carousel.Model
        var body: some View {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(uiModel.imageUrls, id: \.self) { url in
                        if let url = URL(string: url) {
                            AsyncImage(url: url) {image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(10)
                                    .shadow(radius: 4)
                                    .padding(8)
                               
                            }placeholder: {
                                ProgressView()
                            }
                                
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    MyApp.Components.Carousel.CarouselView(uiModel: .sample)
}
