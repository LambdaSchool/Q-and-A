//
//  SubmitQuestionViewController.swift
//  Q-A
//
//  Created by Yvette Zhukovsky on 10/10/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class SubmitQuestionViewController: UIViewController {

    
    @IBOutlet weak var questionTextView: UITextView!
    
    
    @IBOutlet weak var askerTextField: UITextField!
    @IBAction func submitQuestion(_ sender: Any) {
        guard let  question = questionTextView.text else {return}
        guard let asker = askerTextField.text else {return}
        
        if question == "" || asker == "" { return }
        
        qc?.Create(question: question, asker: asker)
        navigationController?.popViewController(animated: true)
    }
    
    
    
    var qc: QuestionController?
    
    
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

}
