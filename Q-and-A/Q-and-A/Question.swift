//
//  Question.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import Foundation

struct Question: Equatable {
    let question: String
    let asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String) {
        self.question = question
        self.asker = asker
        self.answer = nil
        self.answerer = nil
    }
    
    //Initializer for add sample questions
    init(question: String, asker: String, answer: String, answerer: String) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
