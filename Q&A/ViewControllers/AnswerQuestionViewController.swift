//
//  AnswerQuestionViewController.swift
//  Q&A
//
//  Created by Carolyn Lea on 7/30/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class AnswerQuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererNameTextfield: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    var questionController = QuestionController()
    var question: Question?

    override func viewWillAppear(_ animated: Bool) {
        updateViews()
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        
        guard let answererName = answererNameTextfield.text,
            let answer = answerTextView.text else {return}
        
        //questionController.updateWithAnswer(with: question!, answer: answer, answerer: answererName)
        questionController.updateQuestion(with: question!, aQuestion: (question?.aQuestion)!, asker: (question?.asker)!, answer: answer, answerer: answererName)
        
        navigationController?.popViewController(animated: true)
    }
    

    func updateViews() {
        questionLabel.text = question?.aQuestion
        askerLabel.text = question?.asker
        
    }
}
