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
        
    }
    
    func deleteQuestion(question: Question) {
        
        let indexPath = questions[IndexPath.]
        questions.remove(at: indexPath)
    }
    
    //MARK: - Properties
    
    private(set) var questions: [Question] = []
}
