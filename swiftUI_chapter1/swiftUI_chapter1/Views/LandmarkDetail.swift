//
//  Detail.swift
//  swiftUI_chapter1
//
//  Created by Mobile Process on 27/02/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    private var landmark: Landmark
    
    init(landmark: Landmark) {
        self.landmark = landmark
    }
    
    var body: some View {
        ScrollView {
            MapView(location: self.landmark.locationCoordinate)
                .frame(height: 300)
            RoundedRectangleImage(image: self.landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(self.landmark.name)
                    .font(.title)
                HStack {
                    Text(self.landmark.park)
                    Spacer()
                    Text(self.landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About " + self.landmark.name)
                    .font(.title2)
                Text(self.landmark.description)
                    .font(.title3)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview("Turtle Rock") {
    LandmarkDetail(landmark: landmarks[0])
}


#Preview("Salmon") {
    LandmarkDetail(landmark: landmarks[1])
}
