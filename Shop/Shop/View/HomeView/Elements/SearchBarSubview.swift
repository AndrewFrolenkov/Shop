//
//  SearchBarSubview.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 14.03.2023.
//

import SwiftUI

struct SearchBarSubview: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack(alignment: .trailing) {
            SearchBar(text: $searchText)

            Image(systemName: "magnifyingglass")
                .foregroundColor(Color(.systemGray2))
                .padding(.trailing, 10)
        }
        .padding(.horizontal, 57)
        .padding(.top)
    }
}

struct SearchBarSubview_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarSubview()
    }
}
