//
//  QuestionController.swift
//  Q and A
//
//  Created by Cameron Dunn on 1/15/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import Foundation
import UIKit
class QuestionController{
    var questions : [Question] = []
    func create(question: String, asker: String, answer: String?, answerer: String?){
        //initialize a Question object and add it to the questions array.
        let question : Question = Question(question: question, asker: asker,answer: answer, answerer: answerer)
        questions.append(question)
    }
    func update(question: Question, answer: String, answerer: String){
        //An "Update" function that takes in a Question (that you want to update), answer string, and an answerer string to add to the question.
        guard let index = questions.index(of: question) else {return}
        questions[index].answer = answer
        questions[index].answerer = answerer
    }
    func delete(indexPath: Int){
        //A "Delete" function that takes in a Question to be deleted, and removes it from the questions array.
        questions.remove(at: indexPath)
    }
}
