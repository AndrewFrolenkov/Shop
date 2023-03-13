//
//  AuthorizationTextField.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 13.03.2023.
//

import SwiftUI

struct AuthorizationTextField: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(9)
            .font(Font.custom("", size: 12))
            .background(Color("TextFieldBack").opacity(1))
            .multilineTextAlignment(.center)
            .cornerRadius(20)
            .autocorrectionDisabled()
    }
}
