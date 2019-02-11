//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Jeremy Taylor on 2/10/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    var questionController: QuestionController?
    
    @IBAction func submitQuestion(_ sender: UIBarButtonItem) {
        guard let name = nameTextField.text,!name.isEmpty,
            let question = questionTextView.text, !question.isEmpty else { return }
        questionController?.create(question: question, askedBy: name)
        navigationController?.popViewController(animated: true
        )
    }
}
