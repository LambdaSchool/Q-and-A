//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Mitchell Budge on 4/25/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

class QuestionController {
    var questions: [Question] = []
    
    func createQuestion(questionString: String, asker: String) {
        let questionToBeAsked = Question(question: questionString, asker: asker)
        questions.append(questionToBeAsked)
    }
    
    func updateQuestion(questionToBeUpdated: Question, with answer: String, and answerer: String) {
        if let indexOfQuestion = questions.firstIndex(of: questionToBeUpdated) {
            questions[indexOfQuestion].answer = answer
            questions[indexOfQuestion].answerer = answerer
        }
    }
    
    func deleteQuestion(answeredQuestion question: Question) {
        if let indexOfQuestion = questions.firstIndex(of: question) {
            questions.remove(at: indexOfQuestion)
        }
    }
}
