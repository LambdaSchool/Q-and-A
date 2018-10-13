//
//  QuestionController.swift
//  Q&A
//
//  Created by Nikita Thomas on 10/10/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import Foundation

class QuestionController {
    // static var shared = QuestionController()
    var questions = [Question]()
    
    func create(question: String, asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, answerer: String) {
        guard let index = questions.index(of: question) else {return}
        questions[index].answer = answer
        questions[index].answerer = answerer
        
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
//        questions = questions.filter({ $0 !== question })
    }
}
