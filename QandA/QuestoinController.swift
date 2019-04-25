//
//  QuestoinController.swift
//  QandA
//
//  Created by Victor  on 4/25/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class QuestionController {
    
    var questions: [Question] = []

    func createQuestion() {
        let question = Question(question: "What the fuck?", asker: "Victor", answer: nil, answerer: nil)
        questions.append(question)
    }
    
    func update(question: Question, answer: String, answerer: String) {
        //update the question
    }
    
    func delete(question: Question) {
        //delete question from the qeustions array
    }
}
