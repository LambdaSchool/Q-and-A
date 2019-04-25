//
//  SubmitQuestionViewController.swift
//  Q-and-A
//
//  Created by Christopher Aronson on 4/25/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import UIKit

class SubmitQuestionViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var questionTextView: UITextView!
    
    var questionController: QuestionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitQuestionPressed(_ sender: Any) {
        guard let nameString = nameTextField.text,
        let questionString = questionTextView.text
        else { return }
        
        questionController?.createQuestion(question: questionString, asker: nameString  )
        
        
//        question?.asker = nameString
        
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
