//
//  Shop.swift
//  Touchdown
//
//  Created by Isaac Iniongun on 27/03/2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
