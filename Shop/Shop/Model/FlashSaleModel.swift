//
//  FlashSaleModel.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 14.03.2023.
//

import Foundation

// MARK: - FlashSaleModel
struct FlashSaleModel: Codable {
    let flashSale: [FlashSale]
}

// MARK: - FlashSale
struct FlashSale: Codable {
    let category, name: String
    let price: Double
    let discount: Int
    let imageURL: String
}
