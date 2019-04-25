//
//  Question.swift
//  Q-and-A
//
//  Created by Mitchell Budge on 4/25/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

struct Question: Equatable {
    let question: String
    let asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
