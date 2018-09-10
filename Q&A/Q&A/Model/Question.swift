//
//  Question.swift
//  Q&A
//
//  Created by Welinkton on 9/9/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

// Model
// Swift 4.1 you don't have to write out the (static func)
struct Question: Equatable {
    let question:String
    let asker:String
    var answer:String?
    var answerer:String?
    
    init(question: String, asker: String, answer: String? = nil , answerer: String? = nil) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }

}




