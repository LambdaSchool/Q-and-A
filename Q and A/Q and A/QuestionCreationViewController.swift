//
//  QuestionCreationViewController.swift
//  Q and A
//
//  Created by Michael Redig on 4/25/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class QuestionCreationViewController: UIViewController {

	@IBOutlet var nameTextField: UITextField!
	@IBOutlet var questionTextView: UITextView!
	
	var questionController: QuestionController?
	
	override func viewDidLoad() {
        super.viewDidLoad()
    }
	@IBAction func submitQuestionButtonPressed(_ sender: UIBarButtonItem) {
		guard let name = nameTextField.text,
			let questionText = questionTextView.text,
			!name.isEmpty,
			!questionText.isEmpty
			else { return }
		
		questionController?.createQuestion(question: questionText, asker: name)
		navigationController?.popViewController(animated: true)
	}
}
