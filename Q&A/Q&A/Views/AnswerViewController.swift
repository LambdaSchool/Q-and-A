//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Paul Yi on 1/15/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    var questionController: QuestionController?
    var question: Question?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        guard let answerer = answererTextField.text,
            let answer = answerTextView.text,
            let question = question else { return }
        
        if answerer != "" && answer != "" {
            questionController?.updateQuestion(question: question, answer: answer, answerer: answerer)
            navigationController?.popViewController(animated: true)
        }
    }
    
    func updateViews() {
        guard let question = question else { return }
        questionLabel.text = question.question
        askerLabel.text = question.asker
        title = question.question
        
        guard let answer = question.answer,
            let answerer = question.answerer else { return }
        answerTextView.text = answer
        answererTextField.text = answerer
    }
}
