//
//  QuestionModelController.swift
//  QandA
//
//  Created by Vijay Das on 1/22/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

private(set) var questions: [Question] = []


// need to add create, update, and delete functions

func createQuestion(question: String, asker: String) {
    let question = Question(question: question, asker: asker)
    questions.append(question)
}

func updateQuestion(question: Question, answer: String?, answerer: String?) {
    guard let index = questions.index(of: question) else { return }
    questions[index].answer = answer
    questions[index].answerer = answerer
}

