//
//  Question.swift
//  Q and A
//
//  Created by Michael Stoffer on 5/1/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
