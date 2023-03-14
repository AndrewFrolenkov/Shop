//
//  ShopApp.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 12.03.2023.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct ShopApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            RegistrationView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
