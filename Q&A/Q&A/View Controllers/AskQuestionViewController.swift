//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Welinkton on 9/9/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    var questionController: QuestionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // connected outlets
    // call questionController createQuestions Method
    // have navigation controller pop to previous controller
    
    @IBAction func submitQuestionButton(_ sender: Any) {
        guard let submitQuestionTextField = submitQuestionTextField.text,
            let submitQuestionTextView = submitQuestionTextView.text else {return}
        questionController?.createQuestion(question: submitQuestionTextField, asker: submitQuestionTextView)
        navigationController?.popViewController(animated: true)
    }
    
    // Next time use shorter names, although these are very descriptive
    @IBOutlet weak var submitQuestionTextField: UITextField!
    
    @IBOutlet weak var submitQuestionTextView: UITextView!
}
