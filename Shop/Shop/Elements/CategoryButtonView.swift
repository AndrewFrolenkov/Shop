//
//  CategoryButtonView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 13.03.2023.
//

import SwiftUI

struct CategoryButtonView: View, Hashable {
    let category: String
    let isSelected: Bool
    let image: String

    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                Circle()
                    .foregroundColor(isSelected ? Color.orange : Color(.systemGray5))
                    .frame(width: 42, height: 38)
                Image(image)
                    .foregroundColor(isSelected ? .white : Color(.systemGray3))
            }

            Text(category)
                .font(.caption)
                .foregroundColor(isSelected ? .orange : .gray)
        }
    }
}
