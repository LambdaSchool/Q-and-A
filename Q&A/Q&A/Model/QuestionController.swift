//
//  QuestionController.swift
//  Q&A
//
//  Created by Welinkton on 9/9/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

class QuestionController {
    
    // CRUD
    // Read + Create
    
    private(set) var questions: [Question] = []
    
    func createQuestion (question:String, asker:String) {
        let question = Question(question: question, asker: asker)
            questions.append(question)
        }
        
    // UPDATE
    // Update func that takes in answer string, and answerer string to add to the question
    func updateQuestion(question: Question, answer:String, answerer: String){
            guard let index = questions.index(of: question) else {return}
        
        //Declare new variable and set as new question
        var newQuestion = question
        newQuestion.answer = answer
        newQuestion.answerer = answerer
        questions.remove(at: index)
        questions.insert(newQuestion, at: index)
        
        
        // Trying to grab the initial question
        //    questions[index].answer = answer
        //    questions[index].answerer = answerer
        
    }
    
    // DELETE
    
    func deleteQuestion (question: Question) {
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
    }
    
    
    
    
    
}
