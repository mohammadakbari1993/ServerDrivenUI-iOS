//
//  View+ToAnyView.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation
import SwiftUI

extension View {
    func ToAnyView() -> AnyView {
        return AnyView(self)
    }
}
