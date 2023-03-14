//
//  CategoriesSubview.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 14.03.2023.
//

import SwiftUI

struct CategoriesSubview: View {
    
    @State private var selectedCategory = ""
    
    let categories = [
        CategoryButtonView(category: "Phones", isSelected: false, image: "phoneLogo"),
        CategoryButtonView(category: "Headpones", isSelected: false, image: "headponesLogo"),
        CategoryButtonView(category: "Games", isSelected: false, image: "gamesLogo"),
        CategoryButtonView(category: "Cars", isSelected: false, image: "carsLogo"),
        CategoryButtonView(category: "Furniture", isSelected: false, image: "furnitureLogo"),
        CategoryButtonView(category: "Kids", isSelected: false, image: "kidsLogo"),
    ]
    
    var body: some View {
        // MARK: - ScrollView
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 21) {
                ForEach(categories, id: \.self) { product in
                    CategoryButtonView(category: product.category,
                                       isSelected: selectedCategory == product.category,
                                       image: product.image)
                    .onTapGesture {
                        selectedCategory = product.category
                    }
                }
            }
            .padding(.horizontal, 15)
        }
        .padding(.top)
    }
    
}
