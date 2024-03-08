//
//  Word.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import Foundation

struct Word: Codable {
    let id: String
    let tags: [String]
    let content: String
    let author: String
    let authorSlug: String
    let length: Int
    let dateAdded: String
    let dateModified: String
}
