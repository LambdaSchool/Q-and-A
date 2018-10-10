//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Nikita Thomas on 10/10/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    @IBAction func submitButtonPressed(_ sender: Any) {
        guard let nameText = textField.text else {return}
        guard let questionText = textView.text else {return}
        
        if !nameText.isEmpty && !questionText.isEmpty {
            questionController?.create(question: questionText, asker: nameText)
        }
        
        navigationController?.popViewController(animated: true)
    }
   
    
    var questionController: QuestionController?
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
