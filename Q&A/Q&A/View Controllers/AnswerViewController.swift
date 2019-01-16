//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Stuart on 1/15/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBAction func tappedSubmit(_ sender: Any) {
        guard let answerer = nameField.text,
            let answer = answerView.text,
            let question = question else { return }
        
        if answerer != "" && answer != "" {
            QuestionController.shared.update(question: question, with: answer, from: answerer)
            navigationController?.popViewController(animated: true)
        }
    }
    
    func updateViews() {
        guard let question = question else { return }
        questionLabel.text = question.question
        askerLabel.text = question.asker
//        title = question.question
        
        guard let answer = question.answer,
            let answerer = question.answerer else { return }
        answerView.text = answer
        nameField.text = answerer
    }


    // IBOutlets & Properties
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var answerView: UITextView!
    
    var question: Question?
}
