//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Welinkton on 9/9/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    var questionConroller: QuestionController?
    
    var question : Question?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererNameTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    
    @IBAction func submitAnswer(_ sender: Any) {
        guard let answererName = answererNameTextField.text,
            let answerText = answerTextView.text,
            let question = question else {return}
        
        questionConroller?.updateQuestion(question: question, answer: answerText, answerer: answererName)
        navigationController?.popViewController(animated: true)
        
    }
    
     func updateViews(){
        
        guard let question = question else { return }
        
        // TODO Fix This
    
        title = question.question
        questionLabel.text = question.question
       askerLabel.text = question.asker
        
        
        guard let answerer = question.answerer,
            let answer = question.answer else { return }
        
        answererNameTextField.text = answerer
        answerTextView.text = answer
        
        
//        if (question?.answer != nil && question?.answerer != nil) {
//            answererNameTextField?.text =  question?.answerer
//            answerTextView?.text = question?.answer
//        }
//
//        questionLabel?.text = question?.question
//        askerLabel?.text = question?.asker
//        self.title = question?.question
//
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
