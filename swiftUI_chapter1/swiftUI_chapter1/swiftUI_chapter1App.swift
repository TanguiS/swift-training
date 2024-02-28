//
//  swiftUI_chapter1App.swift
//  swiftUI_chapter1
//
//  Created by Mobile Process on 27/02/2024.
//

import SwiftUI

@main
struct swiftUI_chapter1App: App {
    @State private var modelData: ModelData
    
    init() {
        self.modelData = ModelData()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(self.modelData)
        }
    }
}
