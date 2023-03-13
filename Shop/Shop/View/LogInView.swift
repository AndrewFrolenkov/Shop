//
//  LogInView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 13.03.2023.
//

import SwiftUI

struct LogInView: View {
    
    @State private var firstName = ""
    @State private var password = ""
    @State private var isSecure = true
    
    var body: some View {
        VStack {
            Text("Welcome Back")
                .padding(.bottom, 80)
                .font(Font.custom(FontsManager.Montserrat.semiBold, size: 30))
                .foregroundColor(Color("SignInTextColor"))
            
            VStack(alignment: .center, spacing: 35) {
                TextField("First name", text: $firstName)
                    .textFieldStyle(AuthorizationTextField())
                
                ZStack(alignment: .trailing) {
                    
                    if isSecure {
                        SecureField("Password", text: $password)
                            .textFieldStyle(AuthorizationTextField())
                            .textContentType(.password)
                    } else {
                        TextField("Password", text: $password)
                            .textFieldStyle(AuthorizationTextField())
                            .textContentType(.password)
                    }
                    
                    Button(action: {
                        isSecure.toggle()
                    }) {
                        Image(systemName: isSecure ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                        
                    }
                    .padding(.trailing)
                }
            }
            
            Button(action: {
                
            }) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color("ButtonColor"))
                    .cornerRadius(20)
            }
            .padding(.top, 100)
        }
        .padding(.horizontal, 43)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .ignoresSafeArea()
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
