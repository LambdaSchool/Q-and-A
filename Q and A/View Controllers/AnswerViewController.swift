//
//  AnswerViewController.swift
//  Q and A
//
//  Created by Michael Stoffer on 5/2/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    var questionController: QuestionController?
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateViews()
    }
    
    @IBAction func submitAnswerButtonTapped(_ sender: Any) {
        guard let question = self.question,
            let answer = self.answerTextView.text,
            let answerer = self.answererTextField.text else { return }
        
        self.questionController?.updateQuestion(question: question, answerText: answer, answererText: answerer)
        navigationController?.popViewController(animated: true)
    }
    
    private func updateViews() {
        guard let question = self.question, isViewLoaded else { return }
        
        self.questionLabel.text = question.question
        self.askedByLabel.text = question.asker
        
        if question.answer != nil && question.answerer != nil {
            self.answererTextField.text = question.answerer
            self.answerTextView.text = question.answer
        }
    }
}
