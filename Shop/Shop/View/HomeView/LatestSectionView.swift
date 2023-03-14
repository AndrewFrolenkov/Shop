//
//  LatestSectionView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 14.03.2023.
//

import SwiftUI

struct LatestSectionView: View {
    
    let latestProducts = [
           Product(name: "Product 1", price: "$100", category: "Phones", imageName: "iphone"),
           Product(name: "Product 2", price: "$200", category: "Headphones", imageName: "iphone"),
           Product(name: "Product 3", price: "$300", category: "Games", imageName: "iphone"),
           Product(name: "Product 4", price: "$400", category: "Cars", imageName: "iphone"),
           Product(name: "Product 5", price: "$500", category: "Furniture", imageName: "iphone"),
       ]

    var body: some View {
        VStack {
            
            HStack {
                Text("Latest")
                    .foregroundColor(Color("SignInTextColor"))
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("view all")
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                }

            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(latestProducts, id: \.self) { product in
                        LatestView(image: product.imageName,
                                   category: product.category,
                                   name: product.name,
                                   price: product.price
                        )
                    }
                }
            }
            
        }
        .padding(.top, 25)
        .padding(.horizontal, 10)
    }
    
}

// Удалить потом
struct Product: Hashable {
    
    var name: String
    var price: String
    var category: String
    var imageName: String
    
    init(name: String, price: String, category: String, imageName: String) {
        self.name = name
        self.price = price
        self.category = category
        self.imageName = imageName
    }
}
