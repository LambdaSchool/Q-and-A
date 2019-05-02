//
//  AskQuestionViewController.swift
//  Q and A
//
//  Created by Michael Stoffer on 5/2/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    var questionController: QuestionController?

    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var askerTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitQuestionButtonTapped(_ sender: Any) {
        guard let question = self.questionTextField.text,
            let asker = self.askerTextView.text else { return }
        
        if question != "" && asker != "" {
            self.questionController?.createQuestion(questionText: question, askerText: asker)
            navigationController?.popViewController(animated: true)
        }
    }
}
