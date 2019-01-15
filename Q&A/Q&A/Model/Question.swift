//
//  Question.swift
//  Q&A
//
//  Created by Paul Yi on 1/15/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import Foundation

struct Question: Equatable {
    let question: String
    let asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String) {
        self.question = question
        self.asker = asker
        self.answer = nil
        self.answerer = nil
    }
}
