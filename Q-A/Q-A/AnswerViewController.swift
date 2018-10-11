//
//  AnswerViewController.swift
//  Q-A
//
//  Created by Yvette Zhukovsky on 10/10/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    var qc: QuestionController?
    var q: Question?
    
    @IBOutlet weak var answererTextField: UITextField!
    
    @IBOutlet weak var answerTextView: UITextView!
    
    @IBAction func submit_answer(_ sender: Any) {
        guard let  answer = answerTextView.text else {return}
        guard let answerer = answererTextField.text else {return}
        
        if answer == "" || answerer == "" { return }
        guard let qc = qc else {return}
        guard let q = q else {return}
        qc.Update(question:q, answer: answer, answerer: answerer)
        navigationController?.popViewController(animated: true)
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)

        questionLabel.text = q?.question
        askerLabel.text = q?.asker
        
        
    }
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
    
    @IBOutlet weak var askerLabel: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
