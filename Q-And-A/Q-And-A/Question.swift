//
//  Question.swift
//  Q-And-A
//
//  Created by Angel Buenrostro on 1/15/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import Foundation

struct Question {
    let question : String
    let asker : String
    var answer : String?
    var answerer : String?
    
    init(question: String, asker : String, answer : String? = nil, answerer : String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
    
}
