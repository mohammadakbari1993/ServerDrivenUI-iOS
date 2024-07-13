//
//  UIComponent.swift
//  Server_Driven_UI
//
//  Created by Mohammad Akbari on 7/13/24.
//

import Foundation
import SwiftUI

protocol UIComponent {
    var uniqueID : String { get }
    func render() -> AnyView
}
