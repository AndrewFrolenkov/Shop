//
//  SearchBar.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 13.03.2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var body: some View {
        ZStack {
            TextField("What are you looking for?", text: $text)
                .font(Font.custom("Montserrat-Thin", size: 10))
                .multilineTextAlignment(.center)
            Spacer()
        }
        .padding(8)
        .background(Color(.systemGray6))
        .cornerRadius(18)
    }
}
