//
//  QuestionDetailController.swift
//  Question and Answer
//
//  Created by Lotanna Igwe-Odunze on 10/25/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit


class QuestionDetailController: UIViewController {
    
    let currentQuestion = IndexPath().row
    
    @IBOutlet weak var questionView: UILabel!
    
    @IBOutlet weak var askerView: UILabel!
    
    @IBOutlet weak var answerView: UILabel!
    
    @IBOutlet weak var answererView: UILabel!
    
    
    func UpdateView() {
        
        guard let question = questionView else { return }
        guard let asker = askerView else { return }
        guard let answer = answerView else { return }
        guard let answerer = answererView else { return }
        
            //Setting the labels
        
        question.text = thequestions[currentQuestion].question
        asker.text = thequestions[currentQuestion].asker
        answer.text = thequestions[currentQuestion].answer
        answerer.text = thequestions[currentQuestion].answerer
        
    }
    
    
}
