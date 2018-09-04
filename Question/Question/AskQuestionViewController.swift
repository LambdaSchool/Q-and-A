//
//  AskQuestionViewController.swift
//  Question
//
//  Created by Farhan on 9/3/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    var questionController: QuestionController?
    
    @IBOutlet weak var questionLabel: UITextField!
    @IBOutlet weak var nameLabel: UITextField!
    
    @IBAction func askQuestion(_ sender: Any) {
    
        guard let qText = questionLabel.text, let nText = nameLabel.text else {return}
        
        questionController?.createQuestion(question: qText, asker: nText)
    
        navigationController?.popViewController(animated: true)
    }
    
}
