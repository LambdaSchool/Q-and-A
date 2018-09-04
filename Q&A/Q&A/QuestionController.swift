//
//  QuestionController.swift
//  Q&A
//
//  Created by Moin Uddin on 9/3/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import Foundation


class QuestionController {
    
    func createQuestion(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        questions.append(Question(question: question, asker: asker, answer: answer, answerer: answerer))
    }
    
    func updateQuestion(question: Question, answer: String? = nil, answerer: String? = nil){
        question.answer = answer
    }
    
    
    private(set) var questions: [Question] = []
}
