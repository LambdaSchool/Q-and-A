//
//  AskQuestionViewController.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var askerTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    var questionController: QuestionController?
    var question: Question?
    
    // MARK: - UI Methods
    @IBAction func submitQuestion(_ sender: UIBarButtonItem) {
        //Make sure there is a question and asker
        guard let asker = askerTextField.text, !asker.isEmpty,
            let questionString = questionTextView.text, !questionString.isEmpty else { return }
        
        //Add the new question via the question controller's api
        questionController?.create(question: questionString, asker: asker)
        
        //Pop the view off the stack
        navigationController?.popViewController(animated: true)
    }
    
}
