//
//  ProductModel.swift
//  Touchdown
//
//  Created by Aderemilekun Adele on 12/12/2023.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
