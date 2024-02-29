//
//  calculatorApp.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import SwiftUI

@main
struct calculatorApp: App {
    @State private var padData: PadData
    
    init() {
        self.padData = PadData()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(self.padData)
        }
    }
}
