//
//  User.swift
//  Dictionary
//
//  Created by sofia on 19.03.2025.
//

import Foundation

/// User data model
struct User: Codable, Identifiable {
    let id: String
    let displayName: String
    let email: String
    let createDate: Date
    
//    MARK: - To track users activity, login attempts for security purposes, statistics etc. (beyond MVP)
//    let lastLoginDate: Date
//    let dailyStreakDays: String
//    let isGuest: Bool // A flag if user is not authenticated and we're creating a guest user in AppCoordinator (later)
}
