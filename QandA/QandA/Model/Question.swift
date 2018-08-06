//
//  Question.swift
//  QandA
//
//  Created by Lisa Sampson on 8/6/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import Foundation

struct Question: Equatable {
    
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String, answer: String?, answerer: String?) {
        self.question = question
        self.asker = asker
        self.answer = nil
        self.answerer = nil
    }
    
}
