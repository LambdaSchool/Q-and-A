//
//  QuestionController.swift
//  Q&A
//
//  Created by Nathanael Youngren on 1/15/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import Foundation

class QuestionController {
    private(set) var questions: [Question] = []
    
    func create(question: Question) {
        questions.append(question)
    }
    
    func update(question: Question, index: Int) {
        questions[index].answer = question.answer
        questions[index].answerer = question.answerer
    }
    
    func delete(question: Question, index: Int) {
        questions.remove(at: index)
    }
}
