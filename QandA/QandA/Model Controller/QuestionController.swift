//
//  QuestionController.swift
//  QandA
//
//  Created by Lisa Sampson on 8/6/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import Foundation

class QuestionController {
    
//    func create(with question: String, asker: String, answer: String?, answerer: String?) -> Question {
//        let questionAsked = Question(question: question, asker: asker, answer: answer, answerer: answerer)
//
//        questions.append(questionAsked)
//        return question
//    }
    
    func update(questionAsked: Question, with question: String, asker: String, answer: String?, answerer: String?) {
        guard let index = questions.index(of: questionAsked) else { return }
        
        var scratch = questionAsked
        scratch.question = question
        scratch.asker = asker
        scratch.answer = answer
        scratch.answerer = answerer
        
        questions.remove(at: index)
        questions.append(scratch)
    }
    
    func delete(questionAsked: Question) {
        if let index = questions.index(of: questionAsked) {
            questions.remove(at: index)
        }
    }
    
    var questions: [Question] = []
}
