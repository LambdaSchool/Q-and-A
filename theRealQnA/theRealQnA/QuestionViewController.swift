//
//  QuestionViewController.swift
//  theRealQnA
//
//  Created by Diante Lewis-Jolley on 4/25/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func submitButtonTapped(_ sender: Any) {

        guard let askerName = askerNameTextView.text, !askerName.isEmpty else { return }
        guard let questionText = textView.text, !questionText.isEmpty else { return }

        question?.asker = askerName
        question?.question = questionText

        navigationController?.popViewController(animated: true)

        }


    @IBOutlet weak var askerNameTextView: UITextField!
    @IBOutlet weak var textView: UITextView!
    var questionController: QuestionController?
    var question: Question?

}
