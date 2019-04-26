//
//  AnswerViewController.swift
//  QandA
//
//  Created by Jeffrey Carpenter on 4/25/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    var questionController: QuestionController?
    var question: Question?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let question = question {
            questionLabel.text = question.question
            askerLabel.text = question.asker
        }
        
    }
    
    @IBAction func submitButtonPressed(_ sender: UIBarButtonItem) {
        
        guard let answer = answerTextView.text,
        answer != "",
        let answerer = answererTextField.text,
        answerer != "",
        let question = question
        else { return }
        
        questionController?.update(question: question, answer: answer, answerer: answerer)
        
        navigationController?.popViewController(animated: true)
        
    }

}
