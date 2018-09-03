//
//  QuestionController.swift
//  Question
//
//  Created by Farhan on 9/1/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import Foundation

class ModelController {
    
    private(set) var questions : [Question] = []
    
    // CRUD
    
    func createQuestion (question: String, asker: String) {
        
        let newQ = Question(question: question, asker: asker)
        questions.append(newQ)
    }
    
    func addAnswer (question: Question, answer: String, answerer: String) -> Question{
        // Cannot modify question from parameter in place so I created and returned a new question that is modified with the answer value.
        var tempQ = question
        tempQ.answer = answerer
        tempQ.answerer = answerer
        
        return tempQ
        
    }
    
    func deleteQuestion(question: Question) {
        
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
    }
    
    
    
}
