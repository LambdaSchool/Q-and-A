//
//  AnswerQuestionViewController.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class AnswerQuestionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    var questionController: QuestionController?
    var question: Question? 
    
    @IBAction func submitAnswer(_ sender: UIBarButtonItem) {
        guard let answerer = answererTextField.text, !answerer.isEmpty,
            let answer = answerTextView.text, !answer.isEmpty,
            let question =  question else { return }
        
        questionController?.update(question, answer: answer, answerer: answerer)
        
        navigationController?.popViewController(animated: true)
    }
    
    private func updateViews() {
        guard let question = question else { return }
        
        title = question.question
        questionLabel.text = question.question
        askerLabel.text = question.asker
        answererTextField.text = question.answerer ?? ""
        answerTextView.text = question.answer ?? ""
    }


}
