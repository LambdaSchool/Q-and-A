//
//  QuestionController.swift
//  theRealQnA
//
//  Created by Diante Lewis-Jolley on 4/25/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class QuestionController {

    var questions: [Question] = []



    func create(asker: String, question: String) {
        let newQuestion = Question(asker: asker, question: question)

        questions.append(newQuestion)
    }

    func update(array: Question, asker: String, question: String, answerer: String, answer: String) {

        guard let index = questions.index(of: array) else { return }
        var questionIndex = questions[index]

        questionIndex.asker = asker
        questionIndex.question = question
        questionIndex.answerer = answerer
        questionIndex.answer = answer

    }

    func delete(question: Question) {

        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)

    }

    
}
