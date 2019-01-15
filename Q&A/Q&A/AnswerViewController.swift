//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Nathanael Youngren on 1/15/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitAnswerButtonTapped(_ sender: UIBarButtonItem) {
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererNameTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
}
