//
//  QuestionView.swift
//  Q&A
//
//  Created by William Bundy on 7/30/18.
//  Copyright © 2018 William Bundy. All rights reserved.
//

import Foundation
import UIKit


class QuestionCell: UITableViewCell
{
	var question:Question! {
		didSet {
			questionLabel.text = question.question
			askerLabel.text = question.asker
			if question.isAnswered {
				statusLabel.text = "\(question.response)\n--\(question.answerer)"
			} else {
				statusLabel.text = "Can you answer this question?"
			}
		}
	}

	@IBOutlet weak var questionLabel: UILabel!
	@IBOutlet weak var askerLabel: UILabel!
	@IBOutlet weak var statusLabel: UILabel!
}

class QuestionListVC: UIViewController, UITableViewDataSource, QuestionConsumer
{
	var controller:QuestionController!
	@IBOutlet weak var table: UITableView!

	required init?(coder aDecoder: NSCoder)
	{
		super.init(coder:aDecoder)
		controller = QuestionController.instance
	}

	override func viewDidLoad()
	{
		super.viewDidLoad()
		table.dataSource = self
	}

	override func viewWillAppear(_ animated: Bool)
	{
		super.viewWillAppear(true)
		table.reloadData()
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?)
	{
		if var dest = segue.destination as? QuestionConsumer {
			dest.controller = controller
		}

		if let dest = segue.destination as? AnswerQuestionVC {
			guard let cell = sender as? QuestionCell else {return}
			dest.question = cell.question
		}
	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
	{
		return controller.questions.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
	{
		let defaultCell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell")
		guard let cell = defaultCell as? QuestionCell else { return defaultCell! }
		cell.question = controller.questions[indexPath.row]
		return cell
	}
}

class AskQuestionVC: UIViewController, QuestionConsumer
{
	var controller:QuestionController!
	@IBOutlet weak var nameField: UITextField!
	@IBOutlet weak var questionField: UITextField!

	@IBAction func askQuestion(_ sender: Any) {
		guard let name = nameField.text,
			let question = questionField.text
			else {return}
		controller.create(question, by:name)
		navigationController?.popViewController(animated: true)
	}
}

class AnswerQuestionVC: UIViewController, QuestionConsumer
{
	var controller:QuestionController!
	var question:Question!

	@IBOutlet weak var questionLabel: UILabel!
	@IBOutlet weak var askerLabel: UILabel!

	@IBOutlet weak var nameField: UITextField!
	@IBOutlet weak var answerField: UITextField!

	override func viewWillAppear(_ animated: Bool)
	{
		super.viewWillAppear(true)
		questionLabel.text = question.question
		askerLabel.text = question.asker
		if question.isAnswered {
			nameField.text = question.answerer
			answerField.text = question.response
		}
	}


	@IBAction func cancelAnswer(_ sender: Any)
	{
		navigationController?.popViewController(animated: true)
	}

	@IBAction func submitAnswer(_ sender: Any)
	{
		guard let name = nameField.text,
			let answer = answerField.text
			else {return}

		controller.answer(question, answer: answer, by: name)
		navigationController?.popViewController(animated: true)
	}
}

