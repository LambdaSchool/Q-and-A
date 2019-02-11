//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Jeremy Taylor on 2/10/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    var questionController: QuestionController?
    var question: Question?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    
    @IBAction func submitAnswer(_ sender: UIBarButtonItem) {
        guard let name = nameTextField.text, !name.isEmpty,
            let answer = answerTextView.text, !answer.isEmpty,
        let question = question else { return }
        
        questionController?.update(question: question, answer: answer, aswerer: name)
        navigationController?.popViewController(animated: true)
    }
    
    private func updateViews() {
        guard isViewLoaded,
            let question = question else { return }
        questionLabel.text = question.question
        askedByLabel.text = question.asker
        
        if let answerer = question.answerer {
            nameTextField.text = answerer
        }
        
        if let answer = question.answer {
            answerTextView.text = answer
        }
    }
}
