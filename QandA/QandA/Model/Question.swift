//
//  Question.swift
//  QandA
//
//  Created by Kat Milton on 6/6/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import Foundation

struct Question: Equatable {
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
