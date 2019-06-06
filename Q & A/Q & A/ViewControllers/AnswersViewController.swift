//
//  AnswersViewController.swift
//  Q & A
//
//  Created by Jake Connerly on 6/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class AnswersViewController: UIViewController {
    
        //MARK: - Outlets and Properties
    
    var questionController: QuestionController?
    
    var question1: Question?
    
    @IBOutlet weak var questionAskedLabel: UILabel!
    @IBOutlet weak var personAskingLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    //MARK: - Actions and Methods
    
    @IBAction func submitAnswerButton(_ sender: UIBarButtonItem) {
        if answerTextView.text != "",
            answererTextField.text != "" {
            guard let answererName = answererTextField.text,
                let answer = answerTextView.text,
                let question1 = question1 else { return }
            questionController?.update(question: question1, answer: answer, answerer: answererName)
            _ = navigationController?.popViewController(animated: true)
        }
    }
    
    func upddateViews() {
        guard let question1 = question1 else { return }
        questionAskedLabel.text = question1.question
        personAskingLabel.text = question1.asker
    }
    
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
