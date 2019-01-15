//
//  QuestionController.swift
//  Q&A
//
//  Created by Moses Robinson on 1/15/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class QuestionController {
    
    func createQuestion(question: String, asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    func updateQuestion(question: Question, answer: String?, answerer: String?) {
        guard let index = questions.index(of: question) else { return }
        var question = questions[index]
        
        question.answer = answer
        question.answerer = answerer
    }
    
    func deleteQuestion(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
    }
    
    //MARK: - Properties
    
    private(set) var questions: [Question] = []
}
