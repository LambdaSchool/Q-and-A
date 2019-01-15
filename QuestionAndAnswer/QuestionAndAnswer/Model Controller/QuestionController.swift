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
    
    func deleteQuestion(at index: Int) {
        // fill this in
        questions.remove(at: index)
    }
    
}
