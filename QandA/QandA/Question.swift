//
//  Question.swift
//  QandA
//
//  Created by Nathan Hedgeman on 5/2/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let asker: String
    let answer: String?
    let answerer: String?
    
    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
	

}
