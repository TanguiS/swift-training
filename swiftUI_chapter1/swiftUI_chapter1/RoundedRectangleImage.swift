//
//  CircleImage.swift
//  swiftUI_chapter1
//
//  Created by Mobile Process on 27/02/2024.
//

import SwiftUI

struct RoundedRectangleImage: View {
    var body: some View {
        Image("turtulerock")
            .clipShape(RoundedRectangle(cornerRadius: 40.0))
            .overlay {
                RoundedRectangle(cornerRadius: 40.0).stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    RoundedRectangleImage()
}
