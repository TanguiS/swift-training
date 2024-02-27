//
//  LandmarkRow.swift
//  swiftUI_chapter1
//
//  Created by Mobile Process on 27/02/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(self.landmark.name)
            Spacer()
        }
    }
}

#Preview("Turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}


#Preview("Salmon") {
    LandmarkRow(landmark: landmarks[1])
}

#Preview("Turtle Rock & Salmon") {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
