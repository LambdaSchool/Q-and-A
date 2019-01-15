//
//  QuestionController.swift
//  Q&A
//
//  Created by Jocelyn Stuart on 1/15/19.
//  Copyright © 2019 JS. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    func create(withText text: String) {
        let question = Question(question: text, asker: <#String#>)
        questions.append(question)
    }
    
    func update(question: Question, with answer: String, from answerer: String) {
        question.answer = answer
        question.answerer = answerer
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
    }
    
}
