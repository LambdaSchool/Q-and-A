//
//  QuestionController.swift
//  Q-A
//
//  Created by Yvette Zhukovsky on 10/10/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

class QuestionController {
    
    var questions:[Question] = []
    
    
    
    
    
    func Create(question: String, asker: String) {
        
        
        questions.append(Question(question: question, asker: asker))
        
    }
    
    func Update(question: Question,answer: String, answerer: String  ) {
        
        for var q in questions {
            if q.question == question.question {
                q.answer = answer
                q.answerer = answerer
                return
            }
        }
        
        
        
    }
    
    
    func Delete(question: Question, answer: String, answerer: String) {
        
        for index in 0..<questions.count {
            if questions[index].question == question.question {
                questions.remove(at: index)
                return
                
                
            }
            
        }
        
    }
    
}

