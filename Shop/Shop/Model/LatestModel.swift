//
//  LatestModel.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 14.03.2023.
//

import Foundation

// MARK: - LatesModel
struct LatesModel: Codable {
    let latest: [Latest]
}

// MARK: - Latest
struct Latest: Codable {
    let category, name: String
    let price: Int
    let imageURL: String
}
