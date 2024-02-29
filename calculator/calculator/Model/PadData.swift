//
//  PadData.swift
//  calculator
//
//  Created by Mobile Process on 28/02/2024.
//

import Foundation

@Observable
class PadData {
    var pads: [ButtonComponent]
    
    init() {
        self.pads = load("pad.json")
    }
    
    public func getFormattedPad() -> [[ButtonComponent]] {
        var formattedPad: [[ButtonComponent]] = [[ButtonComponent]]()
        var row: [ButtonComponent] = [ButtonComponent]()
        for pad in self.pads {
            row.append(pad)
            if (((pad.id + 1) % 4) == 0) {
                formattedPad.append(row)
                row = [ButtonComponent]()
            }
        }
        return formattedPad
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
