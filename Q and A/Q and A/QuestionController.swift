//
//  QuestionController.swift
//  Q and A
//
//  Created by Diante Lewis-Jolley on 1/23/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class QuestionController {
    var questions: [Question] = []

    func create(_ question: String, asker: String, answer: String) {
        let newQuestion = Question.init(asker: asker, question: question, answer: answer)
        questions.append(newQuestion)
    }

    func remove(_ question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)

    }
}
