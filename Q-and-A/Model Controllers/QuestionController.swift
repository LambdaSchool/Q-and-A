//
//  QuestionController.swift
//  Q-and-A
//
//  Created by De MicheliStefano on 30.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import Foundation

class QuestionController {
    
    func create(question: String, asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, answerer: String) {
        guard let index = questions.index(of: question) else { return }
        var question = questions[index]
        question.answer = answer
        question.answerer = answerer
        print("updating question...")
        print(question)
        questions.remove(at: index)
        questions.insert(question, at: index)
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
    
    var questions: [Question] = []
}
