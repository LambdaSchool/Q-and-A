//
//  Question.swift
//  Q&A
//
//  Created by Moses Robinson on 1/15/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

struct Question {
    let question: String
    let asker: String
    var answer: String?
    var answerer: String?

    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        (self.question, self.asker, self.answer, self.answerer) = (question, asker, answer, answerer)
    }
}
 
