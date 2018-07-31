//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Carolyn Lea on 7/30/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    @IBOutlet weak var askerNameTextField: UITextField!
    @IBOutlet weak var askQuestionTextView: UITextView!
    
    var questionController = QuestionController()
    
    @IBAction func submitQuestion(_ sender: Any) {
        
        guard let askerName = askerNameTextField.text,
            let askQuestion = askQuestionTextView.text else {return}
        
        questionController.createQuestion(with: askQuestion, asker: askerName)
        
        navigationController?.popViewController(animated: true)
    }
    
    

}
