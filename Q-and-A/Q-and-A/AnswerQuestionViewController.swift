//
//  AnswerQuestionViewController.swift
//  Q-and-A
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class AnswerQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabelOutlet: UILabel!
    @IBOutlet weak var askerLabelOutlet: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    
    var questionController: QuestionController?
    var question: Question?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitAnswerTapped(_ sender: Any) {
        if let unwrappedAnswerer = answererTextField.text,
            let unwrappedAnswer = answerTextView.text,
            let unwrappedQuestion = question {
            if unwrappedAnswer != "" && unwrappedAnswerer != "" {
                questionController?.update(question: unwrappedQuestion, with: unwrappedAnswer, from: unwrappedAnswerer)
                
                navigationController?.popViewController(animated: true)
            }
        }
        
        
    }
    
    func updateViews() {
        guard let unwrappedQuestion = question else { return }
        
        if unwrappedQuestion.answer != nil && unwrappedQuestion.answerer != nil {
            questionLabelOutlet.text = unwrappedQuestion.question
            askerLabelOutlet.text = unwrappedQuestion.asker
            answerTextView.text = unwrappedQuestion.answer
            answererTextField.text = unwrappedQuestion.answerer
        } else {
            questionLabelOutlet.text = unwrappedQuestion.question
            askerLabelOutlet.text = unwrappedQuestion.asker
        }
    }
    
    
    
    
    
}
