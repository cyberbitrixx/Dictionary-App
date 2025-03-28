//
//  DicitonaryEntry.swift
//  Dictionary
//
//  Created by sofia on 19.03.2025.
//

import Foundation

/// Data model of individual dictionary entry (word)
struct Word: Codable, Identifiable {
    let id: String
    let languageAWord: String
    let languageBWord: String
    let pronunciationInLanguageA: Pronunciation
    let pronunciationInLanguageB: Pronunciation
    let tags: [String]? // For dictionary categories (NOT SURE IF NEEDED)
    let createdAt: Date? // For sorting and practicing in the dictionary
    let lastReviewedAt: Date // For sorting and practicing
    let dictionaryId: String // Reference to the parent dictionary
    let sectionsId: [String]? // Reference to the sections this word belongs to
    
//    MARK: - For potential features (after MVP)
//    let examples: [Example]? // Usage examples
//    let difficulty: Int? // User defined difficulty 1-5
//    let notes: String?
    
    /// Paths to the audio files and phonetic text for pronunciation
    struct Pronunciation: Codable {
        let firebaseAudioURL: String
        let localAudioPath: String? // If audio is cached
        let phoneticText: String?
    }
    
    /// Track audio file status (not part of Codable)
    enum AudioStatus {
        case notDownloaded
        case downloading
        case downloaded
        case failed
    }
}
