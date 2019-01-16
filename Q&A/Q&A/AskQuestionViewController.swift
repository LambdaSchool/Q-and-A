//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Moses Robinson on 1/15/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    @IBAction func submitQuestionTapped(_ sender: Any) {
        guard let questionText = questionField.text, !questionText.isEmpty,
            let asker = nameField.text, !asker.isEmpty else { return }
        questionController?.createQuestion(question: questionText, asker: asker)
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: - Properties
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var questionField: UITextView!
    
    var questionController: QuestionController?
}
