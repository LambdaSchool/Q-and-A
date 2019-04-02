//
//  Questions.swift
//  Question and Answer
//
//  Created by Lotanna Igwe-Odunze on 10/23/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

class QuestionManager {
    
    var questions: [Question] = []
    let triviaList = QuestionListController()

    //Create new Question
    func create(question: String, asker: String) {
        
        let theQuestion = Question(question: question, asker: asker, answer: nil, answerer: nil)
        
        questions.append(theQuestion)
        
        triviaList.tableView.reloadData()
    }

    //Update Question
    func update(needsUpdate: Question, answer: String, answerer: String) {
    
        for item in questions {
        
        var toUpdate = questions.first { (needsUpdate) -> Bool in
            
            needsUpdate.question == item.question
            //Check for question already in the array that matches the current question
        }
        
        toUpdate?.answer = answer // set the answer for the current question
        toUpdate?.answerer = answerer // set the answere for the current question
        
        } // End of for loop
    } //End of Update function


    //Delete Question
    func delete(todelete: Question) {
    
        for item in questions {
        
        //Check for question already in the array that matches the current question and delete it
        questions.removeAll { (todelete) -> Bool in
            todelete.question == item.question }
        
            } //End of For Loop
    } //End of Function

} //End of QuestionManager Class
