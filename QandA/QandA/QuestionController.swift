//
//  QuestionController.swift
//  QandA
//
//  Created by Nathan Hedgeman on 5/2/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import Foundation

class QuestionController {
    var questions: [Question] = []
    
    
    func Create(aQuestion text: String){
        let question = Question(question: text, asker: text)
        
        questions.append(question)
        }
    
    func Update(question: Question, answer: String, answerer: String) {
        
        guard questions.firstIndex(of: question) != nil else {return}
        
        questions.append(question)
        
    }

    func Delete(question: Question){
        
        guard questions.firstIndex(of: question) != nil else {return}
        
        questions.remove(at: questions.count)
    }
}
