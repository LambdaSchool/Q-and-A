//
//  AskQuestionViewController.swift
//  QandA
//
//  Created by Lisa Sampson on 8/6/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    @IBAction func submitQuestionWasTapped(_ sender: Any) {
        guard let asker = nameTextField.text,
            let question = questionTextView.text else { return }
        
        _ = questionController?.create(with: question, asker: asker, answer: nil, answerer: nil)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    var questionController: QuestionController?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
}
