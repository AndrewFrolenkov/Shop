//
//  RegistrationView.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 12.03.2023.
//

import SwiftUI
import CoreData

struct RegistrationView: View {
    // Bindings for text fields
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    
    // Core Data managed object context
    @Environment(\.managedObjectContext) private var viewContext
    
    // Boolean flag to indicate whether the user is logged in
    @State private var isLoggedIn = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                Spacer()
                
                Text("Sign in")
                    .padding(.bottom, 78)
                    .font(Font.custom(FontsManager.Montserrat.semiBold, size: 30))
                    .foregroundColor(Color("SignInTextColor"))
                
                VStack(spacing: 35) {
                    // Text fields
                    TextField("First name", text: $firstName)
                        .textFieldStyle(AuthorizationTextField())
                    
                    TextField("Last name", text: $lastName)
                        .textFieldStyle(AuthorizationTextField())
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(AuthorizationTextField())
                    
                    // Sign in button
    //                Button(action: {
    //                    // Sign in action
    //                    //let context = CoreDataStack().context
    //                    //User.saveUser(firstName: firstName, lastName: lastName, email: email, password: password, context: context)
    //
    //                }) {
    //                    Text("Sign In")
    //                        .font(.headline)
    //                        .foregroundColor(.white)
    //                        .padding()
    //                        .frame(minWidth: 0, maxWidth: .infinity)
    //                        .background(Color("ButtonColor"))
    //                        .cornerRadius(20)
    //                }
                    
                    NavigationLink(destination: MainView()) {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(Color("ButtonColor"))
                            .cornerRadius(20)
                    }
                    
                }
                
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(Color("TextFieldForegraund"))
                    Button(action: {
                        // Log in action
                    }) {
                        Text("Log in")
                            .foregroundColor(Color("ButtonColor"))
                    }
                    Spacer()
                }
                .font(Font.custom("", size: 12))
                .padding(.top, 17)
                .padding(.bottom, 83)
                
                // Social media buttons
                VStack(alignment: .leading, spacing: 48) {
                    Button(action: {
                        // Google sign in action
                    }) {
                        Image("googleLogo")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.red)
                        Text("Sign in with Google")
                            .font(.subheadline)
                            .foregroundColor(.primary)
                    }
                    
                    Button(action: {
                        // Apple sign in action
                    }) {
                        Image(systemName: "applelogo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18, height: 22)
                            .foregroundColor(.black)
                        Text("Sign in with Apple")
                            .font(.subheadline)
                            .foregroundColor(.primary)
                    }
                }
                Spacer()
            }
            .padding(.horizontal, 43)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
        .ignoresSafeArea()
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

extension RegistrationView {
    
    func loginUser(email: String, password: String) -> Bool {
        let context = CoreDataStack().context
        let request = NSFetchRequest<User>(entityName: "User")
        request.predicate = NSPredicate(format: "email = %@", email)
        request.fetchLimit = 1
        
        do {
            let users = try context.fetch(request)
            if let user = users.first, user.password == password {
                // User is authenticated
                return true
            }
        } catch let error as NSError {
            print("Could not fetch user. \(error), \(error.userInfo)")
        }
        return false
    }
    
}
