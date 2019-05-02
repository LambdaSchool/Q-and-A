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
}
