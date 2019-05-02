//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Hayden Hastings on 5/2/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard let question = questionLabel.text,
            let asker = askerLabel.text,
            let answerer = answererTextField.text,
            let answer = answerTextView.text else { return }
        
        questionController?.createQuestion(for: question, asker: asker)
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    @IBAction func submitAnswerButtonPressed(_ sender: Any) {
        guard let answerer = answererTextField.text,
            let answer = answerTextView.text,
            let question = questionLabel.text,
            let asker = askerLabel.text,
            !answerer.isEmpty, !answer.isEmpty else { return }
        
        questionController?.updateQuestion(for: question, asker: asker, answer: answer, answerer: answerer)
        
        navigationController?.popViewController(animated: true)
    }
    
    var questionController: QuestionController?
    var question: Question?
}
