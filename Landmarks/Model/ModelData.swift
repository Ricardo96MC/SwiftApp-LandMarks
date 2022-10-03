//
//  ModelData.swift
//  Landmarks
//
//  Created by Ricardo Gonzalez on 9/22/22.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Coudn't find \(fileName) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Coulnd't parse \(fileName) as \(T.self):\n\(error)")
    }
}
