//
//  Question.swift
//  Q-and-A
//
//  Created by Sameera Roussi on 4/25/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

import Foundation

struct Question: Equatable {
    let question: String
    let askr: String
    var answer: String?
    var answerer: String?
    
    init(question: String, askr: String, answer: String?, answerer: String? ) {
        self.question = question
        self.askr = askr
        self.answer = nil
        self.answerer = nil
    }
}


