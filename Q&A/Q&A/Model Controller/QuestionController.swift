//
//  QuestionController.swift
//  Q&A
//
//  Created by Linh Bouniol on 7/30/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    func createQuesiton(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        let question = Question(question: question, asker: asker, answer: answer, answerer: answerer)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, answerer: String) {
        
        if let index = questions.index(of: question) {
            var question = question
            question.answer = answer
            question.answerer = answerer
            
            questions.remove(at: index)
            questions.insert(question, at: index)
        }
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
}
