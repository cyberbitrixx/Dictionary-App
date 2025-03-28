//
//  Dictionary.swift
//  Dictionary
//
//  Created by sofia on 19.03.2025.
//

import Foundation


/// Individual Dictionary data model
struct Dictionary: Codable, Identifiable {
    let id: String
    let name: String
    let lastModifiedAt: Date // To sort the list of the dictionaries (last used/modified) etc.
    let wordsCount: Int
    let userId: String // Reference to the owner user
}
