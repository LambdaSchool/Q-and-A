//
//  AnswerViewController.swift
//  Q-and-A
//
//  Created by De MicheliStefano on 31.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Methods
    
    private func updateViews() {
        guard let question = question else { return }
        questionTextLabel.text = question.question
        nameTextLabel.text = question.asker
        
        guard let answerer = question.answerer,
            let answer = question.answer else { return }
        answererTextLabel.text = answerer
        answerTextLabel.text = answer
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        guard let questionController = questionController,
            let question = question,
            let answer = answererTextLabel.text,
            let answerer = answererTextLabel.text else { return }
        
        questionController.update(question: question, answer: answer, answerer: answerer)
    }
    
    // MARK: Properties
    
    var questionController: QuestionController?
    var question: Question?

    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var answererTextLabel: UILabel!
    @IBOutlet weak var answerTextLabel: UITextView!
}
