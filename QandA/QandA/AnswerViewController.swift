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
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    // PM suggestion... Use updateViews() instead of doing the work in viewDidLoad()
    private func updateViews() {
        
        // Unwrap question and make sure view had been loaded.
        guard let question = question, isViewLoaded else { return }
        
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
    }
    
    @IBAction func submitButtonPressed(_ sender: UIBarButtonItem) {
        
        guard let answer = answerTextView.text,
        !answer.isEmpty,
        let answerer = answererTextField.text,
        !answerer.isEmpty,
        let question = question
        else { return }
        
        questionController?.update(question: question, answer: answer, answerer: answerer)
        
        navigationController?.popViewController(animated: true)
        
    }

}
