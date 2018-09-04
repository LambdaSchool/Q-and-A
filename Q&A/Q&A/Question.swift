//
//  Question.swift
//  Q&A
//
//  Created by Moin Uddin on 9/3/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import Foundation


struct Question : Equatable {
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
