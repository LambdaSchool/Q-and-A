//
//  AnswerQuestionViewController.swift
//  QandA
//
//  Created by Nathan Hedgeman on 5/3/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import UIKit

class AnswerQuestionViewController: UIViewController {
    
    var questionController: QuestionController?
    var question: Question?
    
   
    @IBOutlet weak var AskerLabel: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    
    
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var AnswerTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func SubmitAnswerButtonTapped(_ sender: Any) {
        guard NameTextField.text != nil else {return}
        guard AnswerTextField.text != nil else {return}
        
        questionController?.Update(question: <#Question#>, answer: AnswerTextField.text!, answerer: NameTextField.text!)
        
        navigationController?.popViewController(animated: true)
        
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
