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
            if self.landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview("Turtle Rock") {
    LandmarkRow(landmark: ModelData().getLandmarks()[0])
}


#Preview("Salmon") {
    LandmarkRow(landmark: ModelData().getLandmarks()[1])
}

#Preview("Turtle Rock & Salmon") {
    Group {
        LandmarkRow(landmark: ModelData().getLandmarks()[0])
        LandmarkRow(landmark: ModelData().getLandmarks()[1])
    }
}
