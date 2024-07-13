//
//  MyApp.Modules.HomePage.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import SwiftUI

extension MyApp.Modules {
    
    struct HomePage: View {
        @StateObject var vm : ViewModel = ViewModel(service: MyApp.Services.WebService())
       
        var body: some View {
            NavigationView {
                ScrollView {
                    ForEach(vm.components, id: \.uniqueID) { component in
                        component.render()
                    }.navigationTitle("Pets")
                }.task {
                    await vm.getComponents()
                }
            }
        }
    }
    
}

#Preview {
    MyApp.Modules.HomePage()
}
