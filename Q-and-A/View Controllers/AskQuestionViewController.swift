//
//  AskQuestionViewController.swift
//  Q-and-A
//
//  Created by De MicheliStefano on 30.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Methods
    
    @IBAction func submitQuestion(_ sender: Any) {
        guard let questionController = questionController,
            let name = nameTextField.text,
            let question = questionTextView.text else { return }
        
        questionController.create(question: question, asker: name)
    }
    
    // MARK: - Properties
    
    var questionController: QuestionController?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    

}
