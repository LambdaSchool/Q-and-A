//
//  QuestionController.swift
//  Q&A
//
//  Created by Thomas Cacciatore on 4/25/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import Foundation

class QuestionController {
    var questions: [Question] = []
    
    
    func createQuestion(questionToBeAsked: String, asker: String) {
        let askedQuestion = Question(question: questionToBeAsked, asker: asker)
        
        questions.append(askedQuestion)
    }
    
    func updateQuestion(questionToUpdate: Question, answer: String, answerer: String) {
        if let indexOfQuestion = questions.firstIndex(of: questionToUpdate) {
            questions[indexOfQuestion].answer = answer
            questions[indexOfQuestion].answerer = answerer
        }
        
    }
    
    func deleteQuestion(question: Question) {
        if let indexOfQuestion = questions.firstIndex(of: question) {
            questions.remove(at: indexOfQuestion)
            
//            delete cell in tableview??
//            tableView.deleteRows(at indexPath:)
        }
    }
}
