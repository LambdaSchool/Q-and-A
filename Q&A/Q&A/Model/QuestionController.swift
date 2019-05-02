//
//  QuestionController.swift
//  Q&A
//
//  Created by Hayden Hastings on 5/2/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import Foundation

class QuestionController {
    
    func deleteQuestion(for question: Question) {
        
    }
    
    func updateQuestion(for question: String, asker: String, answer: String, answerer: String) {
        let updateQuestion = Question(question: question, asker: asker, answer: answer, answerer: answerer)
        questions.append(updateQuestion)
    }
    
    func createQuestion(for question: String, asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    var questions: [Question] = []
}
