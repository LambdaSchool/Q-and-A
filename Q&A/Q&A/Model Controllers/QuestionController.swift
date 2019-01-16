//
//  QuestionController.swift
//  Q&A
//
//  Created by Stuart on 1/15/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import Foundation

class QuestionController {
    func create(question: String, from asker: String) {
        let newQuestion = Question(question: question, asker: asker)
        questions.append(newQuestion)
    }
    
    func update(question: Question, with answer: String, from answerer: String) {
        question.answer = answer
        question.answerer = answerer
    }
    
    func delete(at index: Int) {
        questions.remove(at: index)
    }
    
    var questions: [Question] = []
}
