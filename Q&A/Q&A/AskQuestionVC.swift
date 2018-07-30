import Foundation
import UIKit

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

