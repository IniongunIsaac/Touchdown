//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Isaac Iniongun on 26/03/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
