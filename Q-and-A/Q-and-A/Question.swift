//
//  Question.swift
//  Q-and-A
//
//  Created by Vijay Das on 10/11/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//
struct Question: Codable {
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(asker: String, question: String, answer: String? = nil, answerer: String? = nil) {
        self.asker = asker
        self.question = question
        self.answer = answer
        self.answerer = answerer
   }

}
