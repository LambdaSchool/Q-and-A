//
//  QuestionViewController.swift
//  Q&A
//
//  Created by Hayden Hastings on 5/2/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextField: UITextView!
    
    @IBAction func submitQuestionButtonPressed(_ sender: Any) {
        guard let question = nameTextField.text,
            let name = nameTextField.text,
        !question.isEmpty, !name.isEmpty else { return }
        
        questionController?.createQuestion(for: question, asker: name)
        
        nameTextField.text = ""
        questionTextField.text = ""
        
        navigationController?.popViewController(animated: true)
    }
    
    var questionController: QuestionController?
    var question: Question?
}
