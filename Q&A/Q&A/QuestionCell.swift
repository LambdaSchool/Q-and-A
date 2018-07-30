import Foundation
import UIKit

class QuestionCell: UITableViewCell
{
	@IBOutlet weak var questionLabel: UILabel!
	@IBOutlet weak var askerLabel: UILabel!
	@IBOutlet weak var statusLabel: UILabel!
	var question:Question! {
		didSet {
			questionLabel.text = question.question
			askerLabel.text = question.asker
			if question.isAnswered {
				statusLabel.text = "\(question.response)\n--\(question.answerer)"
			} else {
				statusLabel.text = "Can you answer this question?"
			}

			let frame = self.frame
			self.frame = CGRect(x: frame.minX, y: frame.minY, width: frame.width, height: intrinsicContentSize.height + 15)
		}
	}

}

