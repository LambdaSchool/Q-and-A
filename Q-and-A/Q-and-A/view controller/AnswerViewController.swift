//
//  AnswerViewController.swift
//  Q-and-A
//
//  Created by Iyin Raphael on 8/6/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func updateView() {
        
        guard let question = question else {return}
        
        title = question.question
        askerNameAppearLabel.text = question.asker
        questionAppearLabel.text = question.question
        answererNameTextfield.text = question.answerer
        answerTextView.text = question.answer
        
        
    }

    @IBAction func submitAnswer(_ sender: Any) {
        guard let question = question else {return}
        let questionAnswer = answerTextView.text
         let questionAnswerer = answererNameTextfield.text
        questionController?.updateQuestion(question: question, answer: questionAnswer, answerer: questionAnswerer)
    }
    
    
    @IBOutlet weak var questionAppearLabel: UILabel!
    @IBOutlet weak var askerNameAppearLabel: UILabel!
    @IBOutlet weak var answerTextView: UITextView!
    @IBOutlet weak var answererNameTextfield: UITextField!
    
    var question: Question?
    var questionController: QuestionController?

}
