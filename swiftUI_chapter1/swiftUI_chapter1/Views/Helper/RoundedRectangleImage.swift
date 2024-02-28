//
//  CircleImage.swift
//  swiftUI_chapter1
//
//  Created by Mobile Process on 27/02/2024.
//

import SwiftUI

struct RoundedRectangleImage: View {
    private var image: Image
    
    init(image: Image) {
        self.image = image
    }
    
    var body: some View {
        self.image
            .clipShape(RoundedRectangle(cornerRadius: 40.0))
            .overlay {
                RoundedRectangle(cornerRadius: 40.0).stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    RoundedRectangleImage(image: Image("turtlerock"))
}
