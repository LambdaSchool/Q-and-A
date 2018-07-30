//
//  Question.swift
//  Q&A
//
//  Created by Carolyn Lea on 7/30/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import Foundation

struct Question: Equatable {
    
    var aQuestion: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(aQuestion: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        self.aQuestion = aQuestion
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
