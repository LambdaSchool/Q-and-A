//
//  QuestionController.swift
//  Q&AApp
//
//  Created by Lambda_School_Loaner_18 on 10/10/18.
//  Copyright © 2018 Lambda_School_Loaner_18. All rights reserved.
//

import Foundation

class QuestionController {
    private(set) var questions: [Question] = []
    
    func createQuestion(question: String, asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }

    func updateQuestion(question: Question, answer: String, answerer: String) {
        guard let index = questions.index(of: question) else {return}
        
        questions[index].answer = answer
        questions[index].answerer = answerer
        
    }

    func deleteQuestion(question: Question) {
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
//        question.filter({ $0 != question})
    }
}
