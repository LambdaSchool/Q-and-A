//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Christopher Aronson on 4/25/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    func createQuestion(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
        let question = Question(question: question, asker: asker, answer: answer, answerer: answerer)
        
        questions.append(question)
    }
    
    func updateQuestions(questionToUpdate: Question, answer: String, answerer: String) -> Question {
        var updatedQuestion = questionToUpdate
        
        updatedQuestion.answer = answer
        updatedQuestion.answerer = answerer
        
        return updatedQuestion
    }
    
    func deleteQuestion(questionToBeDeleted: Question) {
        if let questionIndex = questions.firstIndex(of: questionToBeDeleted) {
            questions.remove(at: questionIndex)
        }
        
    }
            
}
