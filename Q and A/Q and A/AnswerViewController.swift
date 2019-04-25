//
//  AnswerViewController.swift
//  Q and A
//
//  Created by Michael Redig on 4/25/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
	
	var questionController: QuestionController?
	var question: Question?

	@IBOutlet var questionLabel: UILabel!
	@IBOutlet var askerLabel: UILabel!
	
	@IBOutlet var nameTextField: UITextField!
	@IBOutlet var answerTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
	
	@IBAction func submitAnswerPressed(_ sender: UIBarButtonItem) {
		guard let name = nameTextField.text,
			let answerText = answerTextView.text,
			!name.isEmpty,
			!answerText.isEmpty,
			let question = question
			else { return }
		
		questionController?.updateQuestion(question: question, answer: answerText, answerer: name)
		
		navigationController?.popViewController(animated: true)
	}
	
	func updateViews() {
		guard let question = question, isViewLoaded else { return }
		
		questionLabel.text = question.question
		askerLabel.text = question.asker
		
		if let answer = question.answer, let answerer = question.answerer {
			answerTextView.isEditable = false
			answerTextView.text = answer
			
			nameTextField.text = answerer
			nameTextField.isEnabled = false
		}
	}
}
