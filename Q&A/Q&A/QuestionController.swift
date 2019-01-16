//
//  QuestionController.swift
//  Q&A
//
//  Created by Jocelyn Stuart on 1/15/19.
//  Copyright © 2019 JS. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    func create(withText text: String, askerName: String) {
        let question = Question(question: text, asker: askerName)
        questions.append(question)
    }
    
    func update(question: Question, with answer: String, from answerer: String) {
        guard let index = questions.index(of: question) else { return }
        questions[index].answer = answer
        questions[index].answerer = answerer
    }
    
    func delete(question: Question) {
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
    }
    
}
