//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Iyin Raphael on 8/6/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import Foundation
class QuestionController {
    
    func createQuestion(question: String, asker: String){
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    func updateQuestion(question: Question, answer: String?, answerer: String?){
        guard let indexOfquestion = questions.index(of: question) else {return}
        let questionInQuestions = questions[indexOfquestion]
        var scratch = questionInQuestions
        scratch.answer = answer
        scratch.answerer = answerer
        
        questions.remove(at: indexOfquestion)
        questions.insert(scratch, at: indexOfquestion)
        
    }
    
    
    func delete(question: Question){
        guard let indexOfquestion = questions.index(of: question) else {return}
        questions.remove(at: indexOfquestion)
        
    }
    
    var questions: [Question] = []
}
