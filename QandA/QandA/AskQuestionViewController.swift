//
//  AskQuestionViewController.swift
//  QandA
//
//  Created by Nathan Hedgeman on 5/3/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    var questionController: QuestionController?

    
    @IBOutlet weak var NameTextField: UITextField!
    
    @IBOutlet weak var QuestionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitButtonTapped(_ sender: Any) {
        
        guard NameTextField.text != nil else {return}
        guard QuestionTextView.text != nil else {return}
        
        
        questionController?.Create(aQuestion: QuestionTextView.text, aName: NameTextField.text! )
        
        navigationController?.popViewController(animated: true)
        
    }
    
  
}
