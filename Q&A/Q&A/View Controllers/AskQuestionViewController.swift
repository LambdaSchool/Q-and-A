//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Stuart on 1/15/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    @IBAction func tappedSubmit(_ sender: Any) {
        guard let asker = nameField.text,
            let question = questionView.text else { return }
        if asker != "" && question != "" {
            QuestionController.shared.create(question: question, from: asker)
            navigationController?.popViewController(animated: true)
        }
    }
    
    // IBOutlets & Properties
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var questionView: UITextView!
}
