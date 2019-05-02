//
//  QuestionTableViewController.swift
//  Q&A
//
//  Created by Hayden Hastings on 5/2/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)

        guard let questionCell = cell as? QuestionTableViewCell else { return cell }
        let question = questionController.questions[indexPath.row]
        
        questionCell.question = question

        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            questionController.questions.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AskQuestion" {
            guard let askQuestionVC = segue.destination as? AskQuestionViewController,
            let cell = sender as? QuestionTableViewCell else { return }
            
            askQuestionVC.question = cell.question
        }
    }
    
    let questionController = QuestionController()
}
