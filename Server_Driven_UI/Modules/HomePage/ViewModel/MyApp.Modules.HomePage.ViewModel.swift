//
//  MyApp.Modules.HomePage.ViewModel.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation
import SwiftUI

protocol HomePageViewModelProtocol {
    var components : [UIComponent] { get set }
    var service : NetworkService {get set}
    func getComponents() async
}
@MainActor
extension MyApp.Modules.HomePage {
    
    class ViewModel : ObservableObject, HomePageViewModelProtocol {
        var service: NetworkService
        
        @Published var components: [UIComponent] = []
        
        init(service: NetworkService) {
            self.service = service
        }
        
        func getComponents() async {
            do {
                
                let serviceModel = try await service.load(resource: MyApp.Utils.Constants.Urls.pet_listing,
                                                          model: MyApp.UIModels.ScreenModel.self)
                
                components = try serviceModel.buildCompnents()
                
            } catch {
                print(error.localizedDescription)
            }
        }
        
        
    }
    
}
