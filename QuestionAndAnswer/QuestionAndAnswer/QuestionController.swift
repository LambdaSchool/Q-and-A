//
//  QuestionController.swift
//  QuestionAndAnswer
//
//  Created by Nelson Gonzalez on 1/15/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

class QuestionController {
    private(set) var questions: [Question] = []
    
    func create(with question: String, and asker: String){
        let question = Question(theQuestion: question, theAsker: asker)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, answerer: String){
       
    }
    
    func delete(question: Question){
        //need to make Question struct equatable for this to work..
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
    }
}
