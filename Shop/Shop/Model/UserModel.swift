//
//  User.swift
//  Shop
//
//  Created by Нахид Гаджалиев on 12.03.2023.
//

import CoreData

class User: NSManagedObject {
    @NSManaged var firstName: String
    @NSManaged var lastName: String
    @NSManaged var email: String
    @NSManaged var password: String
    
    static func saveUser(firstName: String, lastName: String, email: String, password: String, context: NSManagedObjectContext) {
        let user = User(context: context)
        user.firstName = firstName
        user.lastName = lastName
        user.email = email
        user.password = password
        
        do {
            try context.save()
        } catch let error as NSError {
            print("Could not save user. \(error), \(error.userInfo)")
        }
    }
}
