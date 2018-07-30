import Foundation
import UIKit

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

