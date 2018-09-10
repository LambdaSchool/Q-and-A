//
//  AskQuestionViewController.swift
//  Q-and-A
//
//  Created by Iyin Raphael on 8/6/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    

    var questionController: QuestionController?
    var question: Question?
    
    @IBAction func submitQuestion(_ sender: Any) {
        guard let question = questionLabel.text,
        let askersubmit = askerSubmitLabel.text else {return}
        questionController?.createQuestion(question: question, asker: askersubmit)
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var questionLabel: UITextView!
    @IBOutlet weak var askerSubmitLabel: UITextField!
  

}
