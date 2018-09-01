//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import Foundation

class QuestionController {
    //Array to hold questions. The data source for the application
    private(set) var questions: [Question] = [Question(question: "What is for lunch?", asker: "Bill", answer: "Tacos", answerer: "Joe"), Question(question: "What time is lunch?", asker: "Tom"), Question(question: "Where is everyone getting that coffee from?", asker: "Joe", answer: "It is in the break room", answerer: "Cindy")]
    
    //Create method to initialize a question and add it to the array
    func create(question: String, asker: String) {
        let question = Question(question: question, asker: asker)
        
        questions.append(question)
    }
    
    //Update method that takes a Question, answer and answerer to add to the question
    func update(_ question: Question, answer: String, answerer: String) {
        guard let index = questions.index(of: question) else { return }
        
        questions[index].answer = answer
        questions[index].answerer = answerer
    }
    
    //Delete function that takes a Question and removes it from the array
    func delete(_ question: Question) {
        guard let index = questions.index(of: question) else { return }
        
        questions.remove(at: index)
    }
}
