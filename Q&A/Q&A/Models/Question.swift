//
//  Question.swift
//  Q&A
//
//  Created by Stuart on 1/15/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import Foundation

class Question {
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
