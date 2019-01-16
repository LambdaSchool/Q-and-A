//
//  QuestionController.swift
//  QuestionAndAnswer
//
//  Created by Dustin Koch on 1/15/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import Foundation
import UIKit

class QuestionController {

    private(set) var questions: [Question] = []

    func create(question: String, asker: String, answer: String?, answererer: String?) {
        let question = Question(question: question, asker: asker, answer: answer, answerer: answer)
        questions.append(question)
        
    }
    
    func update(specificQuestion: Question, answer: String, answerer: String) {
        //An "Update" function that takes in a Question (that you want to update), answer string, and an answerer string to add to the question.
        
        guard let index = questions.index(of: specificQuestion) else { return }


        var temporaryQuestion = specificQuestion
        temporaryQuestion.answer = answer
        temporaryQuestion.answerer = answerer
        
        questions[index] = temporaryQuestion
        
//        questions.remove(at: index)
//        questions.insert(temporaryQuestion, at: index)
        
        
    }
    
    func delete(specificQuestion: Question){
        //A "Delete" function that takes in a Question to be deleted, and removes it from the questions array.
        guard let index = questions.index(of: specificQuestion) else { return }
        questions.remove(at: index)
        
    }

}
