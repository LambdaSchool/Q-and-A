//
//  QuestionTableViewController.swift
//  Q and A
//
//  Created by Michael Redig on 4/25/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

	let questionController = QuestionController()
	
    override func viewDidLoad() {
        super.viewDidLoad()

    }
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		tableView.reloadData()
	}

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)
		guard let questionCell = cell as? QuestionTableViewCell else { return cell }
		questionCell.question = questionController.questions[indexPath.row]
		
		return questionCell
	}
	
	
	override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete {
			questionController.deleteQuestion(atIndex: indexPath.row)
			tableView.deleteRows(at: [indexPath], with: .automatic)
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
	}
}
