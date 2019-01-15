//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Moses Robinson on 1/15/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    @IBAction func submitAnswerTapped(_ sender: Any) {
        guard let answerer = answererTextField.text, !answerer.isEmpty,
            let answer = answerTextView.text, !answerer.isEmpty,
            let question = question else { return }
        
        questionController?.updateQuestion(question: question, answer: answer, answerer: answerer)
        navigationController?.popViewController(animated: true)
    }
    
    private func updateViews() {
        
    }
    
    //MARK: - Properties
    
    var questionController: QuestionController?
    var question: Question?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
}
