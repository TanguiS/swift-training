//
//  LandmarkList.swift
//  swiftUI_chapter1
//
//  Created by Mobile Process on 27/02/2024.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) private var modelData
    @State private var showFavoritesOnly: Bool
    
    init() {
        self.showFavoritesOnly = false
    }
    
    var body: some View {
        NavigationSplitView {
            let filteredLandmarks: [Landmark] = getFilteredLandmarks()
            List() {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            .animation(.default, value: filteredLandmarks)
        } detail: {
            Text("Select a Landmark")
        }
    }
    
    private func getFilteredLandmarks() -> [Landmark] {
        return self.modelData.getLandmarks().filter { landmark in
            (!self.showFavoritesOnly || landmark.isFavorite)
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
