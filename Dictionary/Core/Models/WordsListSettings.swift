//
//  ListSettings.swift
//  Dictionary
//
//  Created by sofia on 24.03.2025.
//

import Foundation

/// Visual words alignment settings data model
struct WordsListSettings: Codable {
    var sortOption: SortingOptions
    var primaryDisplayLanguage: PrimaryLanguage // Word in which language is on the top
    
    enum SortingOptions: String, Codable {
        case addedRecentlyFirst
        case addedEarlierFirst
        case alphabeticalAscending
        case alphabeticalDescending
        case random
    }
    
    enum PrimaryLanguage: String, Codable {
        case languageA
        case languageB
    }
    
    static func defaultSettings() -> WordsListSettings {
        return WordsListSettings(sortOption: .addedRecentlyFirst, primaryDisplayLanguage: .languageA)
    }
}
