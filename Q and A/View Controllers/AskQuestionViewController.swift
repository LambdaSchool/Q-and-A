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

    @IBOutlet weak var askerTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitQuestionButtonTapped(_ sender: Any) {
        guard let question = self.questionTextView.text,
            let asker = self.askerTextField.text else { return }
        
        if question != "" && asker != "" {
            self.questionController?.createQuestion(questionText: question, askerText: asker)
            navigationController?.popViewController(animated: true)
        }
    }
}
