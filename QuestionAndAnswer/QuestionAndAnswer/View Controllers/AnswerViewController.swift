//
//  AnswerViewController.swift
//  QuestionAndAnswer
//
//  Created by Nelson Gonzalez on 1/15/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    
    @IBOutlet weak var answererTextField: UITextField!
    
    @IBOutlet weak var answerTextView: UITextView!
    
    
    
    var questionController: QuestionController?
    var question: Question?

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

   
    @IBAction func submitAnswerBarButtonTapped(_ sender: UIBarButtonItem) {
        guard let answer = answerTextView.text, !answer.isEmpty, let answerer = answererTextField.text, !answerer.isEmpty else {return}
        
        
        navigationController?.popViewController(animated: true)
    }
    
}
