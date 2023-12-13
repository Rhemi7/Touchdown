//
//  Shop.swift
//  Touchdown
//
//  Created by Aderemilekun Adele on 13/12/2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
