//
//  AskQuestionViewController.swift
//  Q-and-A
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextField: UITextView!
    
    var questionController: QuestionController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitQuestionTapped(_ sender: Any) {
        if let unwrappedName = nameTextField.text,
            let unwrappedQuestion = questionTextField.text {
            if unwrappedName != "" && unwrappedQuestion != "" {
                questionController?.create(Question(question: unwrappedQuestion, asker: unwrappedName))
                
                navigationController?.popViewController(animated: true)
            }
        }
    }
    
    
}
