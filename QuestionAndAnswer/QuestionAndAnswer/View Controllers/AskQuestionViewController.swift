//
//  AskQuestionViewController.swift
//  QuestionAndAnswer
//
//  Created by Nelson Gonzalez on 1/15/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var questionTextView: UITextView!
    
    var questionController: QuestionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func submitQuestionBarButtonTapped(_ sender: UIBarButtonItem) {
        
        guard let name = nameTextField.text, !name.isEmpty, let question = questionTextView.text, !question.isEmpty else {return}
        
        questionController?.create(question: question, asker: name)
        self.dismiss(animated: true, completion: nil)
    }
    
}
