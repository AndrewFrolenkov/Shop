//
//  HomeView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 13.03.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var selectedCategory = -1

    let categories = ["Phones", "Headpones", "Games", "Cars", "Furniture", "Kids"]
    let logos = ["phoneLogo", "headponesLogo", "gamesLogo", "carsLogo", "furnitureLogo", "kidsLogo"]
    
    
    let latestProducts = [
           Product(name: "Product 1", price: "$100", category: "Phones", imageName: "phoneLogo"),
           Product(name: "Product 2", price: "$200", category: "Headphones", imageName: "headponesLogo"),
           Product(name: "Product 3", price: "$300", category: "Games", imageName: "gamesLogo"),
           Product(name: "Product 4", price: "$400", category: "Cars", imageName: "product4"),
           Product(name: "Product 5", price: "$500", category: "Furniture", imageName: "product5"),
       ]

    var body: some View {
        NavigationView {
            VStack {
                // MARK: - SearchBar
                ZStack(alignment: .trailing) {
                    SearchBar(text: $searchText)

                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(.systemGray2))
                        .padding(.trailing, 10)
                }
                .padding(.horizontal, 57)
                .padding(.top)
                
                // MARK: - ScrollView
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 21) {
                        ForEach(0..<categories.count) { index in
                            CategoryButtonView(category: categories[index],
                                               isSelected: selectedCategory == index,
                                               image: logos[index])
                                .onTapGesture {
                                    selectedCategory = index
                                }
                        }
                    }
                    .padding(.horizontal, 15)
                }
                .padding(.top)

                Spacer()
            }
            
            
            
            // MARK: - NAVIGATION UPDATES
            
            .navigationBarItems(
                leading: Button(action: {
                    // Action for menu button
                }) {
                    Image("MenuButtonImage")
                },
                trailing: VStack(spacing: 16) {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    Text("Location")
                        .font(.system(.caption2))
                }
            )
            .navigationTitle("Trade by bata")
            .navigationBarTitleDisplayMode(.inline)
            .font(Font.custom("", size: 20))
            .fontWeight(.medium)
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Product {
    
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
