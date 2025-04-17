//
//  AuthServiceProtocol.swift
//  Dictionary
//
//  Created by sofia on 02.04.2025.
//

import Foundation

/// A protocol defining AuthService structure for handling user authentication
protocol AuthServiceProtocol {
    func isUserLoggedIn() -> Bool
    func getCurrentUser() -> User?
    func logout()
}
