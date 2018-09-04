//
//  AnswerViewController.swift
//  Question
//
//  Created by Farhan on 9/3/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    var questionController: QuestionController?
    var question: Question?
    
    @IBOutlet weak var showQuestionLabel: UILabel!
    @IBOutlet weak var answererLabel: UITextField!
    @IBOutlet weak var answerLabel: UITextField!
    @IBOutlet weak var askerNameLabel: UILabel!
    
    @IBAction func submitAnswer(_ sender: Any) {
    
        guard let question = question, let aText = answerLabel.text, let answerNameText = answererLabel.text else {return}
        
        questionController?.addAnswer(question: question, answer: aText, answerer: answerNameText)
        
        navigationController?.popViewController(animated: true)
    }
    
    func updateViews(){
        
        guard let question = question else {return}
        
        guard case showQuestionLabel.text = question.question else {return}
        guard case askerNameLabel.text = question.asker else {return}
    
        
    }

}
