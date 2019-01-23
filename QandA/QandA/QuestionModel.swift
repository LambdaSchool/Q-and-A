//
//  QuestionModel.swift
//  QandA
//
//  Created by Vijay Das on 1/22/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

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
