//
//  QuestionController.swift
//  Q&AApp
//
//  Created by Lambda_School_Loaner_18 on 10/10/18.
//  Copyright © 2018 Lambda_School_Loaner_18. All rights reserved.
//

import Foundation

class QuestionController {
    var questions = [Question]()
    
    func createQuestion(question: String, asker: String, answer: String) {
        let question = Question(question: question, asker: asker)
        question.append(question)
    }

    func update(question: Question, answer: String, answerer: String) {
        
    }

    func delete(question: Question) {
        guard let index = question.index(of:) else {return}
        questions.remove(at: index)
        question.filter({ $0 != question})
    }
}
