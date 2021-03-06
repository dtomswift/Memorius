//
//  Flashcard.swift
//  Memorius
//
//  Created by Devron Tombacco on 17/09/2021.
//

import UIKit
import RealmSwift

class Flashcard: Object {
    
    @Persisted var question = ""
    @Persisted var answer = ""
    @Persisted var uuid = UUID().uuidString
    convenience init(question: String, answer: String) {
        self.init()
        self.question = question
        self.answer = answer
        self.uuid = uuid
    }
    
    override static func primaryKey() -> String? {
        return "uuid"
      }
    
}

