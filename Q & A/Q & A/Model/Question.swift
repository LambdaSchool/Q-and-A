//
//  Question.swift
//  Q & A
//
//  Created by Jake Connerly on 6/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import Foundation

struct Question {
    var question: String
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

