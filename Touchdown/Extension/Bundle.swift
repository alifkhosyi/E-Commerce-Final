//
//  Bundle.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 18/01/22.
//

import Foundation

extension Bundle {
    func decode <T: Codable> (_ file : String) -> T {
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Cannot decode \(file)")
        }
        
        // 2. Create properties for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Cannot decode \(file)")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create properties for decoder
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Cannot decode \(file)")
        }
        // 5. Return data
        return loaded
    }
}
