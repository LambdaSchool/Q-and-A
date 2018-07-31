//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Linh Bouniol on 7/30/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    var questionController: QuestionController?
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var askerLabel: UILabel!
    @IBOutlet var answererTextField: UITextField!
    @IBOutlet var answerTextView: UITextView!
    
    @IBAction func submitAnswer(_ sender: Any) {
        guard let answerer = answererTextField.text, answerer.count > 0, let answer = answerTextView.text, answer.count > 0, let question = question else { return }
        
        questionController?.update(question: question, answer: answer, answerer: answerer)
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }

    private func updateViews() {
        guard let question = question else { return }
        
        questionLabel?.text = question.question
        askerLabel?.text = question.asker
        answererTextField?.text = question.answerer
        answerTextView?.text = question.answer
    }
    
        // If question (from the variable) gets called before the viewDidLoad(), then all the outlets/action will be nil and the updateViews() will crashed. Setting all the properties in the updateViews() to be optionals will fix it so that if they're nil, then nothing will happen.
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    

}
