//
//  MapView.swift
//  swiftUI_chapter1
//
//  Created by Mobile Process on 27/02/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    private var location: CLLocationCoordinate2D
    
    init(location: CLLocationCoordinate2D) {
        self.location = location
    }
    
    var body: some View {
        Map(initialPosition: .region(self.region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: self.location,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView(location: landmarks[0].locationCoordinate)
}
