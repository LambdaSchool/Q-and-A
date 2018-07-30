//
//  QuestionsTableViewController.swift
//  Q-and-A
//
//  Created by De MicheliStefano on 30.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)

        guard let questionCell = cell as? QuestionTableViewCell else { return cell }
        let question = questionController.questions[indexPath.row]
        questionCell.question = question

        return questionCell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let question = questionController.questions[indexPath.row]
            questionController.delete(question: question)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    // MARK: - Properties
    
    let questionController = QuestionController()
}
