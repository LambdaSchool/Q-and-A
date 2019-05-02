//
//  QuestionController.swift
//  Q and A
//
//  Created by Michael Stoffer on 5/1/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

import Foundation

class QuestionController {
    var questions: [Question] = []
    
    // CREATE
    func createQuestion(questionText: String, askerText: String) {
        let question = Question(question: questionText, asker: askerText)
        questions.append(question)
    }
    
    // UPDATE
    func updateQuestion(question: Question, answerText: String, answererText: String) {
        guard let index = questions.firstIndex(of: question) else { return }
        
        questions[index].answer = answerText
        questions[index].answerer = answererText
    }
    
    // DELETE
    func deleteQuestion(question: Question) {
        guard let index = questions.firstIndex(of: question) else { return }
        questions.remove(at: index)
    }
}
