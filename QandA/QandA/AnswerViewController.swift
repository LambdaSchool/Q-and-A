//
//  AnswerViewController.swift
//  QandA
//
//  Created by Michael Flowers on 1/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    var questionController = QuestionController()
    var question: Question?
    @IBOutlet weak var inputQuestionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answereNameLabel: UITextField!
    @IBOutlet weak var theAnswerTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        guard let name = answereNameLabel.text, !name.isEmpty, let answer = theAnswerTextField.text, !answer.isEmpty, let oldQuestion = question else { return }
        questionController.update(question: oldQuestion, newAnswer: answer, newAnswerer: name)
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    func updateViews(){
        guard let passedInQuestion = question else { return }
        inputQuestionLabel.text = passedInQuestion.question
        askerLabel.text = passedInQuestion.asker
    }

}
