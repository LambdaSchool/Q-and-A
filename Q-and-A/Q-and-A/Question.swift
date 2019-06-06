//
//  Question.swift
//  Q-and-A
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation

struct Question {
    // MARK: - Properties
    var question: String        // Represents question asker has
    var asker: String          // Stores name of person asking question
    var answer: String?       // represents answer, made optional bc not every question will have an answer as soon as it is created
    var answerer: String?    // Name of person answering the question
    
    // MARK: - Initializer
    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
