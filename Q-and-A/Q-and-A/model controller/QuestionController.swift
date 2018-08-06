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
        var questionInQuestions = questions[indexOfquestion]
        questionInQuestions.answer = answer 
        questionInQuestions.answerer = answerer
        
    }
    
    
    func delete(question: Question){
        guard let indexOfquestion = questions.index(of: question) else {return}
        questions.remove(at: indexOfquestion)
        
    }
    
    var questions: [Question] = []
}
