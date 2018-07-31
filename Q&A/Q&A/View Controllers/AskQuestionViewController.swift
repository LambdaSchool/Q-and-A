//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Linh Bouniol on 7/30/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    var questionController: QuestionController?
    
    @IBOutlet var askerNameTextField: UITextField!
    @IBOutlet var questionTextView: UITextView!
    
    @IBAction func submitQuestion(_ sender: Any) {
        guard let name = askerNameTextField.text, name.count > 0, let question = questionTextView.text, question.count > 0 else { return }
        
        questionController?.createQuesiton(question: question, asker: name)
        
        navigationController?.popViewController(animated: true)
    }

}
