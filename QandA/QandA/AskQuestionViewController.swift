//
//  AskQuestionViewController.swift
//  QandA
//
//  Created by Michael Flowers on 1/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    var questionController: QuestionController?
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitButton(_ sender: Any) {
        //check to see if there's text in both fields
        guard let nameText = enterNameTextField.text, !nameText.isEmpty, let questionText = questionTextView.text, !questionText.isEmpty else { return }
        
        //now that we have the information, we can add/create our model object which is the question
        questionController?.addQuestion(with: questionText, asker: nameText)
        
        //dismiss the viewController
        navigationController?.popToRootViewController(animated: true)
    }
}
