//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Aderemilekun Adele on 12/12/2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        // 1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to loc \(file) in bundle")
        }
        
        // 2. Create a property fpr the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to loc \(file) in bundle")
        }
        
        // 3. Create a decoder
        let decoder = JSONDecoder()
        
        // 4. Create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to loc \(file) in bundle")
        }
        
        // 5. Return the ready-to-use data
        return decodedData
    }
}
