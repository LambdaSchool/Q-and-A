//
//  QuestionsTableViewController.swift
//  Q&A
//
//  Created by Stuart on 1/15/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuestionController.shared.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as? QuestionTableViewCell else { return UITableViewCell() }

        let question = QuestionController.shared.questions[indexPath.row].question
        cell.questionLabel.text = question
        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            QuestionController.shared.delete(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAnswerView" {
            guard let destinationVC = segue.destination as? AskQuestionViewController else { return }

        } else if segue.identifier == "toQuestionView" {
            guard let destinationVC = segue.destination as? AnswerViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
        }

    }
    
//    let questionController = QuestionController()
}
