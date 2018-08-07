//
//  AnswerViewController.swift
//  QandA
//
//  Created by Lisa Sampson on 8/6/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    func updateViews() {
        guard let question = question else { return }
        questionLabel.text = question.question
        askerLabel.text = question.asker
        answererTextField.text = question.answerer
        answerTextView.text = question.answer
    }
    
    @IBAction func submitAnswerButton(_ sender: Any) {
        guard let question = question,
            let questionText = questionLabel.text,
            let asker = askerLabel.text,
            let answerer = answererTextField.text,
            let answer = answerTextView.text else { return }
        
        _ = questionController?.update(questionAsked: question, with: questionText, asker: asker, answer: answer, answerer: answerer)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    var questionController: QuestionController?
    var question: Question?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
}
