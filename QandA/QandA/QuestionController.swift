//
//  QuestionController.swift
//  QandA
//
//  Created by Jeffrey Carpenter on 4/25/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    
    init() {
        create(question: "Test question", asker: "tester")
        create(question: "Question with Anser", asker: "PokerGod")
        update(question: Question(question: "Question with Anser", asker: "PokerGod"), answer: "Test Answer", answerer: "PokerDevil")
    }
    
    func create(question: String, asker: String) {
        
        // Create a new question and append to the questions array
        let question = Question(question: question, asker: asker)
        questions.append(question)
        
    }
    
    func update(question: Question, answer: String, answerer: String) {
        
        // Find the question in the questions array and edit the answer/answerer properties
        guard let index: Int = questions.firstIndex(of: question) else { return }
        
        questions[index].answer = answer
        questions[index].answerer = answerer
        
    }
    
    func delete(question: Question) {
        
        // Find and remove the question from the array
        guard let index: Int = questions.firstIndex(of: question) else { return }
        questions.remove(at: index)
        
    }
    
}
