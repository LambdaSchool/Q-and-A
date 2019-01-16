//
//  QuestionController.swift
//  QandA
//
//  Created by Michael Flowers on 1/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import Foundation

class QuestionController {
    
    var questions: [Question] = []
    
    func addQuestion(with question: String, asker: String){
        let newQuestion = Question(question: question, asker: asker)
        questions.append(newQuestion)
    }
    
    func update(question: Question, newAnswer: String, newAnswerer: String){
        question.answer = newAnswer
        question.answerer = newAnswerer
    }
    
    func delete(question: Question){
        //first find the index of the question you want to delete in the array
        guard let index = questions.firstIndex(of: question) else { return }
        //remove the index from the array
        questions.remove(at: index)
    }
}
