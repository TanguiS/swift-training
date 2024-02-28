//
//  Detail.swift
//  swiftUI_chapter1
//
//  Created by Mobile Process on 27/02/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    private var landmark: Landmark
    
    init(landmark: Landmark) {
        self.landmark = landmark
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(location: self.landmark.locationCoordinate)
                .frame(height: 300)
            RoundedRectangleImage(image: self.landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(self.landmark.name)
                        .font(.title)
                    FavoriteButton(
                        isSet: $modelData.landmarks[self.getLandmarkIndex()]
                            .isFavorite
                    )
                }
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
    
    private func getLandmarkIndex() -> Int {
        return self.modelData.getLandmarks().firstIndex(where: {
            $0.id == self.landmark.id
        })!
    }
}

#Preview("Turtle Rock") {
    LandmarkDetail(landmark: ModelData().getLandmarks()[0])
        .environment(ModelData())
}


#Preview("Salmon") {
    LandmarkDetail(landmark: ModelData().getLandmarks()[1])
        .environment(ModelData())
}
