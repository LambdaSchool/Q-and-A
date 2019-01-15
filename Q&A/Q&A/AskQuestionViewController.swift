//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Nathanael Youngren on 1/15/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    @IBAction func submitQuestion(_ sender: UIBarButtonItem) {
        if textField.text != nil && textField.text != "" && textView.text != nil && textView.text != "" {
            questionController?.create(question: textView.text, asker: textField.text!)
            navigationController?.popToRootViewController(animated: true)
        } else {
            return
        }
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    var questionController: QuestionController?
    
}
