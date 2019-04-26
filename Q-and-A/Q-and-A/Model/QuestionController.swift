//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Sameera Roussi on 4/25/19.
//  Copyright © 2019 Sameera Roussi. All rights reserved.
//

import Foundation

class QuestionController {

    var questions: [Question] = []

    func createQuestion(_ question: Question) {
        questions.append(question)
    }
    
    func updateQuestion(_ answer: String, answerer: String, at index:Int) {
        self.questions[index].answer = answer
        self.questions[index].answerer = answerer
    }
    
    func deleteQuestion (at index: Int) {
        questions.remove(at: index)
    }

}
