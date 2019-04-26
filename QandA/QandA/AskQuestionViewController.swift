//
//  AskQuestionViewController.swift
//  QandA
//
//  Created by Jeffrey Carpenter on 4/25/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    var questionController: QuestionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitQuestionButtonPressed(_ sender: UIBarButtonItem) {
        
        guard let name = nameTextField.text,
        name != "",
        let question = questionTextView.text,
        question != ""
        else { return }
        
        questionController?.create(question: question, asker: name)
        
        navigationController?.popViewController(animated: true)
        
    }

}
