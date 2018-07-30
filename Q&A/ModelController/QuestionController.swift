//
//  QuestionController.swift
//  Q&A
//
//  Created by Carolyn Lea on 7/30/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    func createQuestion(with aQuestion: String, asker: String) {
        let question = Question(aQuestion: aQuestion, asker: asker)
        questions.append(question)
    }
    
    func updateQuestion(with question: Question, aQuestion: String, asker: String, answer: String?, answerer: String?) {
        
        if let index = questions.index(of: question) {
            
            var tempQuestion = question
            tempQuestion.aQuestion = aQuestion
            tempQuestion.asker = asker
            tempQuestion.answer = answer
            tempQuestion.answerer = answerer
            
            questions.remove(at: index)
            questions.insert(question, at: index)
        }
    }
    
    func deleteQuestion(question: Question) {
        
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
    }
}
