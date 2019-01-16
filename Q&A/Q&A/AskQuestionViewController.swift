//
//  QuestionViewController.swift
//  Q&A
//
//  Created by Jocelyn Stuart on 1/15/19.
//  Copyright © 2019 JS. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var questionController: QuestionController?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var questionTextView: UITextView!
    
    @IBAction func submitQuestionTapped(_ sender: UIBarButtonItem) {
        guard let nameText = nameTextField.text, let questionText = questionTextView.text else {return}
        
        if !nameText.isEmpty && !questionText.isEmpty {
            questionController?.create(withText: questionText, askerName: nameText)
           
            nameTextField.text = nil
            questionTextView.text = nil
            
             _ = navigationController?.popViewController(animated: true)
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
