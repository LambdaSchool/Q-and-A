//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation

class QuestionController {
    
    // MARK: - Properties
    var questions: [Question] = []
    
    // MARK: - Methods and Functions
    func create(_ newQuestion: Question) {
        self.questions.append(newQuestion)
    }
    
    func update(question: Question, with updateAnswer: String, from updateAnswerer: String) {
        for index in 0..<questions.count {
            if questions[index].question == question.question {
                questions[index].answer = updateAnswer
                questions[index].answerer = updateAnswerer
            }
        }
    }
    
    func delete(deleteQuestion: Question) {
        for index in 0..<questions.count {
            if questions[index].question == deleteQuestion.question {
                questions.remove(at: index)
            } else {
                continue
            }
        }
    }
    
    
}
