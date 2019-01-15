//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Paul Yi on 1/15/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    var questionController: QuestionController?
    
    @IBOutlet weak var askerTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var submitQuestion: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func submitQuestion(_ sender: Any) {
        guard let askerName = askerTextField.text,
            let questionText = questionTextView.text else { return }
        if askerName != "" && questionText != "" {
            questionController?.createQuestion(question: questionText, asker: askerName)
            navigationController?.popViewController(animated: true)
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
