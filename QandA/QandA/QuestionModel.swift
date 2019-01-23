//
//  QuestionModel.swift
//  QandA
//
//  Created by Vijay Das on 1/22/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

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
