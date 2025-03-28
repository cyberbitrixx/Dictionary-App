//
//  UserSettings.swift
//  Dictionary
//
//  Created by sofia on 19.03.2025.
//

import Foundation

/// App-wide settings and user preferences
struct AppSettings: Codable {
    
    var theme: AppTheme
    var interfaceLanguage: String
    var darkModeEnabled: Bool
    
    enum AppTheme: String, Codable {
        case light
        case dark
        case system
    }
    
    static func defaultSettings() -> AppSettings {
        return AppSettings(theme: .system, interfaceLanguage: Locale.current.language.languageCode?.identifier ?? "en", darkModeEnabled: false)
    }
    
}
