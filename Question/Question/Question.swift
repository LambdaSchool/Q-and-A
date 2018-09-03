//
//  Question.swift
//  Question
//
//  Created by Farhan on 9/1/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import Foundation

struct Question: Equatable {
    let question: String
    let asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil ) {
        
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
        
    }
    
}
