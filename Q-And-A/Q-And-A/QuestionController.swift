//
//  QuestionController.swift
//  Q-And-A
//
//  Created by Angel Buenrostro on 1/15/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions : [Question] = []
    
    func Create(question : String, asker : String, answer : String?, answerer : String?) {
        let newQuestion = Question(question: question, asker: asker, answer: answer, answerer: answerer)
        questions.append(newQuestion)
    }
    
    func Update(question : Question, answer : String, answerer : String){
        var index = 0
        while index < questions.count {
            if questions[index] == question {
                questions[index].answer = answer
                questions[index].answerer = answerer
                index += 1
            }
    }
    
    func Delete(question : Question){
        var index = 0
        while index < questions.count {
            if questions[index] == question {
                questions.remove(at: index)
                index += 1
            }
        }
    }
}
}
