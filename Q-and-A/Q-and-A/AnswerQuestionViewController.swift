//
//  AnswerQuestionViewController.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class AnswerQuestionViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Update the view when it loads
        updateViews()
    }
    
    
    // MARK: - Properties
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    var questionController: QuestionController?
    var question: Question? 
    
    
    // MARK: - UI Methods
    @IBAction func submitAnswer(_ sender: UIBarButtonItem) {
        //Check to make sure there is an answer and answerer
        guard let answerer = answererTextField.text, !answerer.isEmpty,
            let answer = answerTextView.text, !answer.isEmpty,
            let question =  question else { return }
        
        //Update the question via the quetion controller's api
        questionController?.update(question, answer: answer, answerer: answerer)
        
        //Pop the view off of the stack
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Private Utility Methods
    private func updateViews() {
        //Make sure there is a question
        guard let question = question else { return }
        
        //Update the labels and text fields with the properties of the question
        title = question.question
        questionLabel.text = question.question
        askerLabel.text = question.asker
        answererTextField.text = question.answerer ?? ""
        answerTextView.text = question.answer ?? ""
    }


}
