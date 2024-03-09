//
//  Word.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import Foundation

//This is Word structure which is the model used for storing JSON Data.
struct Word: Codable {
    let _id: String
    let tags: [String]
    let content: String
    let author: String
    let authorSlug: String
    let length: Int
    let dateAdded: String
    let dateModified: String
}
