//
//  Question.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import Foundation

struct Question: Equatable {
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String) {
        self.question = question
        self.asker = asker
        self.answer = nil
        self.answerer = nil
    }
}
