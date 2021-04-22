//
//  DatabaseManager.swift
//  Messenger
//
//  Created by OUT-Mishchenko1-DY on 21.04.2021.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    
    static let shared = DatabaseManager()
    private let database = Database.database().reference()
    
    
    
}

// MARK: - Account Management
extension DatabaseManager {
    
    public func userExists(with email: String, completion: @escaping ((Bool) -> Void)) {
        database.child(email).observeSingleEvent(of: .value, with: { snapshot in
            guard snapshot.value as? String != nil else {
                completion(false)
                return
            }
            
            completion(true)
            
        })
    }
    /// Inserts new user to database
    public func insertUser(with user: ChatAppUser) {
        database.child(user.email).setValue([
            "first_name": user.firstname,
            "last_name": user.lastname
        ])
    }
}
struct ChatAppUser {
    let firstname: String
    let lastname: String
    let email: String
//    let profilePictureUrl: String
}
