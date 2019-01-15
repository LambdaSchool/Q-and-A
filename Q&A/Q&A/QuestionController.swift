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
    
    func create(question: String, asker: String) {
        let newQuestion = Question(question: question, asker: asker)
        questions.append(newQuestion)
    }
    
    func update(question: Question, answerer: String, answer: String) {
        guard let index = questions.index(of: question) else { return }
        
        questions[index].answer = answer
        questions[index].answerer = answerer
    }
    
    func delete(at index: Int) {
        questions.remove(at: index)
    }
}
