//
//  AskQuestionViewController.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    @IBOutlet weak var askerTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    var questionController: QuestionController?
    var question: Question?
    
    
    @IBAction func submitQuestion(_ sender: UIBarButtonItem) {
        guard let asker = askerTextField.text, !asker.isEmpty,
            let questionString = questionTextView.text, !questionString.isEmpty else { return }
        
        questionController?.create(question: questionString, asker: asker)
        
        navigationController?.popViewController(animated: true)
    }
    
}
