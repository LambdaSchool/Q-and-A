//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Nathanael Youngren on 1/15/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    @IBAction func submitAnswerButtonTapped(_ sender: UIBarButtonItem) {
        if answererNameTextField.text != nil && answererNameTextField.text != "" && answerTextView.text != nil && answerTextView.text != "" {
            questionController?.update(question: question!, answerer: answererNameTextField.text!, answer: answerTextView.text)
            navigationController?.popToRootViewController(animated: true)
        }
    }
    
    func updateViews() {
        if question?.question != nil {
            questionLabel.text = question?.question
            askerLabel.text = question?.asker
            if question?.answer != nil && question?.answer != "" {
                answerTextView.text = question?.answer
                answererNameTextField?.text = question?.answerer
            }
        }
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererNameTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    var questionController: QuestionController?
    var question: Question?
    
}
