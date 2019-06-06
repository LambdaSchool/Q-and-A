//
//  QuestionController.swift
//  QandA
//
//  Created by Kat Milton on 6/6/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import Foundation

// MARK: - Properties
var questions: [Question] = []


// MARK: - Function to create question.
// Will initialize a Question object and add it to the questions array.
func createQuestion(question: Question) {
    questions.append(question)
}

// Will update the selected question with the answer and answerer strings.
func updateQuestion(questionToUpdate: Question, answer: String?, answerer: String?) {
    var question = questionToUpdate
    if let newAnswer = answer{
        if let newAnswerer = answerer {
            print(newAnswerer)
            question.answerer = newAnswerer
        }
        print(newAnswer)
        question.answer = newAnswer
    }
    
    
//    if questionToUpdate.question != "" {
//        if let newAnswer = answer {
//            print(newAnswer)
//            if let newAnswerer = answerer {
//            if questionToUpdate.answer == nil || questionToUpdate.answerer == nil{
//                let updatedAnswer = questionToUpdate.answer ?? "" + newAnswer
//                let updatedAnswerer = questionToUpdate.answerer ?? "" + newAnswerer
//
//            } else if questionToUpdate.answer != nil {
//                let updatedAnswer = questionToUpdate.answer! + newAnswer
//                let updatedAnswerer = questionToUpdate.answerer! + newAnswerer
//            }
//        }
//        }
//    }
    
}

// This will remove questions from the array.

func deleteQuestion(questiontoDelete: Question) {
    if let index = questions.firstIndex(of: questiontoDelete) {
        questions.remove(at: index)
    }
}

