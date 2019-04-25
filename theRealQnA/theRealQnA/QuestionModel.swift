//
//  QuestionModel.swift
//  theRealQnA
//
//  Created by Diante Lewis-Jolley on 4/25/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

struct Question: Equatable {

    var asker: String
    var question: String
    var answerer: String?
    var answer: String?

    init(asker: String, question: String, answerer: String? = nil, answer: String? = nil) {
        self.asker = asker
        self.question = question
        self.answerer = answerer
        self.answer = answer
    }

}
