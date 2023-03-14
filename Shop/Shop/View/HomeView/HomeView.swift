//
//  HomeView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 13.03.2023.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    // MARK: - SearchBar
                    SearchBarSubview()
                    
                    // MARK: - ScrollView
                    CategoriesSubview()
                    
                    // MARK: - Latest Section
                    LatestSectionView()
                    
                    // MARK: - Flash sale Section
                    FlashSaleSection()
                    
                    // MARK: - Flash sale Section
                    BrandsSectionView()
                    Spacer()
                }
                
                
                // MARK: - NAVIGATION UPDATES
                
                .navigationBarItems(
                    leading: Button(action: {
                        // Action for menu button
                    }) {
                        Image("MenuButtonImage")
                    },
                    trailing: VStack {
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
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


