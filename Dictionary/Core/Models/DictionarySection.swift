//
//  DictionarySection.swift
//  Dictionary
//
//  Created by sofia on 28.03.2025.
//

import Foundation

/// Individual dictionary section data model
struct DictionarySection: Codable, Identifiable {
    let id: String
    let name: String
    let dictionaryId: String // Reference to it's Dictionary
    let wordIds: [String]
    
//    For sections sorting
    let createdAt: Date
    let lastModifiedAt: Date
    let lastOpenedAt: Date
}
