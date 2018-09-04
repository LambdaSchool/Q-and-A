//
//  QuestionController.swift
//  Q&A
//
//  Created by Moin Uddin on 9/3/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import Foundation


class QuestionController {
    
    func createQuestion(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        let question = Question(question: question, asker: asker, answer: answer, answerer: answerer)
        questions.append(question)
    }
    
    func updateQuestion(question: Question, answer: String? = nil, answerer: String? = nil){
        guard let index = questions.index(of: question) else { return }
        var newQuestion = question
        newQuestion.answer = answerer
        newQuestion.answer = answerer
        questions.remove(at: index)
        questions.insert(newQuestion, at: index)
    }
    
    func deleteQuestion(question: Question){
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
    
    
    private(set) var questions: [Question] = []
}
