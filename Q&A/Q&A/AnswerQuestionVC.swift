import Foundation
import UIKit

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

