//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation

class QuestionController {
    var questions: [Question] = []
    
    func create(_ newQuestion: Question) {
        self.questions.append(newQuestion)
    }
    
    func Update(_ question: Question,_ updateAnswer: String,_ updateAnswerer: String) {
        var updatedQuestion: Question?
        
        for index in 0..<questions.count {
            if questions[index].question == question.question {
                
                // Assigning new values to the question chosen for update
                updatedQuestion?.answer = updateAnswer
                updatedQuestion?.answerer = updateAnswerer
                
                // Unwrapping the updatedQuestion so it can be stored back in the array
                guard let unwrappedUpdatedQuestion = updatedQuestion else { return }
                
                // Removing the old question and then replacing it with the new updated question at its exact spot in the array before update
                questions.remove(at: index)
                questions.insert(unwrappedUpdatedQuestion, at: index)
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
