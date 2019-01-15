//
//  AnswerViewController.swift
//  QuestionAndAnswer
//
//  Created by Nelson Gonzalez on 1/15/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    
    @IBOutlet weak var answererTextField: UITextField!
    
    @IBOutlet weak var answerTextView: UITextView!
    
    
    
    var questionController: QuestionController?
    var question: Question? {
        didSet {
            updateViews()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateViews()
    }
    

   
    @IBAction func submitAnswerBarButtonTapped(_ sender: UIBarButtonItem) {
        guard let answer = answerTextView.text, !answer.isEmpty, let answerer = answererTextField.text, !answerer.isEmpty, let question = question, let questionController = questionController else {return}
        
        questionController.update(question: question, answer: answer, answerer: answerer)
        
        navigationController?.popViewController(animated: true)
    }
    
    private func updateViews(){
        guard isViewLoaded else { return }
        if let question = question {
            questionLabel.text = question.question
            askerLabel.text = question.asker
            answererTextField.text = question.answerer
            answerTextView.text = question.answer
        } else {
            questionLabel.text = nil
            askerLabel.text = nil
            answererTextField.text = nil
            answerTextView.text = nil
        }
    }
    
}
