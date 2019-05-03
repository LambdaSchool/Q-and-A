//
//  QuestionController.swift
//  Q&A
//
//  Created by Jeremy Taylor on 2/10/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import Foundation

class QuestionController {
    private(set) var questions: [Question] = []
    
    func create(question: String, askedBy asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, aswerer: String) {
        guard let index = questions.index(of: question) else { return }
        let tempQuestion = Question(question: question.question, asker: question.asker, answer: answer, answerer: aswerer)
        questions.remove(at: index)
        questions.insert(tempQuestion, at: index)
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
}
