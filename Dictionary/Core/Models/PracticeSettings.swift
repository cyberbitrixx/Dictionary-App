//
//  PracticeSettings.swift
//  Dictionary
//
//  Created by sofia on 24.03.2025.
//

import Foundation

/// Data model for settings when practicing words
struct PracticeSettings: Codable {
    var audioPlaybackOrder: AudioPlaybackOrder
    var primaryLanguage: PrimaryLanguage
    var volumeLevel: Float
    
    enum AudioPlaybackOrder: String, Codable {
        case random
        case sequential
        case byCategory
        case recentlyAdded
    }
    
    enum PrimaryLanguage: String, Codable {
        case languageAFirst
        case languageBFirst
    }
    
    /// Set default settings for practice mode
    /// - Returns: a set of default settings of type PracticeSettings
    static func getDefaultSettings() -> PracticeSettings {
        return PracticeSettings(audioPlaybackOrder: .random, primaryLanguage: .languageAFirst, volumeLevel: 0.7)
    }
}
