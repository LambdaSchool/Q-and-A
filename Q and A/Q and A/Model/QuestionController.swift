//
//  QuestionController.swift
//  Q and A
//
//  Created by Rick Wolter on 10/10/18.
//  Copyright © 2018 RNWolter. All rights reserved.
//

import Foundation


class QuestionController{
    
   
    var questions =  [Question]()
    
    
    func create(questionAsked: String, askersName: String){
        let question = Question(question: questionAsked, asker: askersName)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, answerer: String){
        guard let questionIndex = questions.index(of: question) else {return}
        questions[questionIndex].answer = answer
        questions[questionIndex].answerer = answerer
    }
    
    func delete(question: Question){
        guard let indexToDelete = questions.index(of: question) else {return}
        questions.remove(at: indexToDelete)
    }
    
    
}
