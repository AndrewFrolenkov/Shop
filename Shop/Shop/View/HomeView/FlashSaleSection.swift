//
//  FlashSaleSection.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 14.03.2023.
//

import SwiftUI

struct FlashSaleSection: View {
    
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
                Text("Flash sale")
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
                        FlashSaleView(image: product.name,
                                      category: product.category,
                                      name: product.name,
                                      price: product.price,
                                      discount: "30"
                        )
                        
                    }
                }
            }
            
        }
        .padding(.top, 20)
        .padding(.horizontal, 10)
    }
}

struct FlashSaleSection_Previews: PreviewProvider {
    static var previews: some View {
        FlashSaleSection()
    }
}
