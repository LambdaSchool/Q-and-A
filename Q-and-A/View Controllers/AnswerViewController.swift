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
        updateViews()
    }
    
    // MARK: Methods
    
    private func updateViews() {
        guard isViewLoaded else { return }
        
        guard let question = question else { return }
        questionTextLabel.text = question.question
        nameTextLabel.text = question.asker
        print("printing answerView question")
        print(question)
        guard let answerer = question.answerer,
            let answer = question.answer else { return }
        answererTextLabel.text = answerer
        answerTextLabel.text = answer
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        guard let questionController = questionController,
            let question = question,
            let answerer = answererTextLabel.text,
            let answer = answerTextLabel.text else { return }
        
        questionController.update(question: question, answer: answer, answerer: answerer)
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: Properties
    
    var questionController: QuestionController?
    var question: Question? {
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var answererTextLabel: UITextField!
    @IBOutlet weak var answerTextLabel: UITextView!
}
