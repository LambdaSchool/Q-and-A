//
//  QuestionController.swift
//  Q & A
//
//  Created by Jake Connerly on 6/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    //MARK: - Methods
    
    func create(question: String, asker: String) {
        let createdQuestion = Question(question: question, asker: asker)
        questions.append(createdQuestion)
    }
    
    func update(question: Question, answer: String, answerer: String) {
        let updatedQuestion = question
        let updatedAnswer = updatedQuestion.answer
        let updatedAnswerer = updatedQuestion.answerer
    }
    
    func delete(questionToDelete: Question) {
        var index = 0
        for question in questions {
            if question.question == questionToDelete.question {
                questions.remove(at: index)
            }
            index += 1
        }
    }
}
