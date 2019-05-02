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
        for i in self.questions.indices {
            if questions[i].question == question.question && questions[i].asker == question.asker {
                questions[i].answer = answerText
                questions[i].answerer = answererText
            }
        }
    }
    
    // DELETE
    func deleteQuestion(question: Question) {
        for i in self.questions.indices {
            if questions[i].question == question.question && questions[i].asker == question.asker {
                questions.remove(at: i)
                break
            }
        }
    }
}
