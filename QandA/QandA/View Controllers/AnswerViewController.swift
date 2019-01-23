//
//  AnswerViewController.swift
//  QandA
//
//  Created by Vijay Das on 1/23/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    var questionController: QuestionModelController?
    var question: Question?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    
    @IBAction func submitAnswerButton(_ sender: Any) {
        guard let answererName = answererTextField.text, !answererName.isEmpty,
            let answer = answerTextView.text, !answer.isEmpty,
            let question = question else { return }
        
        questionController?.updateQuestion(question: question, answer: answer, answerer: answererName)
        navigationController?.popViewController(animated: true)
        
    }
    
    func updateViews() {
        questionLabel.text = question?.question
        askerLabel?.text = question?.asker
        answererTextField?.text = question?.answerer
        answerTextView?.text = question?.answer
        
        if question?.answer != nil {
            answererTextField?.text = question?.answerer
            answerTextView?.text = question?.answer
            questionLabel?.text = question?.question
            askerLabel?.text = question?.asker
        }
        
        
        
    }
    
    
    
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    
  

}
