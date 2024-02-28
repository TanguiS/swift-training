//
//  ModelData.swift
//  swiftUI_chapter1
//
//  Created by Mobile Process on 27/02/2024.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark]
    
    init() {
        self.landmarks = load("landmarkData.json")
    }
    
    public func getLandmarks() -> [Landmark] {
        return self.landmarks
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
