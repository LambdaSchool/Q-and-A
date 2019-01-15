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
    
    func create(question: String, asker: String){
        let question = Question(theQuestion: question, theAsker: asker)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, answerer: String){
      guard let index = questions.index(of: question) else { return }
        questions[index].answer = answer
        questions[index].answerer = answerer
    }
    
    func deleteQuestion(at index: Int) {
    
        questions.remove(at: index)
    }
    
}
