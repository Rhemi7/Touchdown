//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Aderemilekun Adele on 12/12/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
