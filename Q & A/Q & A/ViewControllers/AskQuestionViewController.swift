//
//  AskQuestionViewController.swift
//  Q & A
//
//  Created by Jake Connerly on 6/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

var questionController: QuestionController?
var question: Question?

class AskQuestionViewController: UIViewController {
    
    //MARK: - Outlets and Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    
    //MARK: - Actions and Methods
    
    @IBAction func submitQuestionButtonTapped(_ sender: Any) {
        
        if nameTextField.text != nil || nameTextField.text != "",
            questionTextView.text != nil || questionTextView.text != "" {
            guard let nameTextField = nameTextField.text,
                let questionTextView = questionTextView.text else { return }
            questionController?.create(question: nameTextField, asker: questionTextView)
            _ = navigationController?.popViewController(animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

}
