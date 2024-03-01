//
//  ButtonComponent.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import Foundation
import SwiftUI

struct ButtonComponent: Hashable, Codable, Identifiable {
    let id: Int
    let displayString: String
    private let color: String
    var displayColor: Color {
        Color(color)
    }
}
