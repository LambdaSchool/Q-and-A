//
//  Question.swift
//  QuestionAndAnswer
//
//  Created by Nelson Gonzalez on 1/15/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

struct Question {
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(theQuestion: String, theAsker: String, theAnswer: String? = nil, theAnswerer: String? = nil){
        self.question = theQuestion
        self.asker = theAsker
        self.answer = theAnswer
        self.answerer = theAnswerer
    }
}
