//
//  UserAuthService.swift
//  Dictionary
//
//  Created by sofia on 02.04.2025.
//

import Foundation
import FirebaseAuth

/// Handle user authentication and user login state validation
class AuthService: AuthServiceProtocol {
    /// Ccheck if user is logged in
    /// - Returns: true or false based on result
    func isUserLoggedIn() -> Bool {
        return Auth.auth().currentUser != nil
    }
    
    /// If user is logged in - get user object from Firebase and map to the app's User data model
    /// - Returns: User object
    func getCurrentUser() -> User? {
//        Safely unwrap the optional user and if there is no value - finish function execution early, to not cause the app crash
        guard let firebaseUser = Auth.auth().currentUser else {
            return nil
        }
        
//        Safely unwrap optional fields
        guard let displayName = firebaseUser.displayName,
              let email = firebaseUser.email,
              let creationDate = firebaseUser.metadata.creationDate else {
            return nil
        }
        
//        Transform Firebase User into app's User data model
        let user = User(id: firebaseUser.uid, displayName: displayName, email: email, createDate: creationDate)
        
        return user
    }
    
    /// Method to log out the user
//    MARK: - Log out errors should be handled better in the future but for now since it's not being used it works
    func logout(){
        do {
            try Auth.auth().signOut()
            print("Signed out successfully")
        } catch {
            print("Sign out error: \(error.localizedDescription)")
        }
    }

}
