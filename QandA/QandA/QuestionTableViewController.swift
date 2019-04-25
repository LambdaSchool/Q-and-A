//
//  QuestionTableViewController.swift
//  QandA
//
//  Created by Jeffrey Carpenter on 4/25/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    let questionController = QuestionController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)

        // Configure the cell...
        guard let questionCell = cell as? QuestionTableViewCell else { return cell }
        
        let question = questionController.questions[indexPath.row]
        questionCell.question = question

        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        #warning("Incomplete method: tableView(:commit:forRowAt:)")
        // TODO: - Implement this function
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AskQuestion" {
            
            guard let destinationVC = segue.destination as? AskQuestionViewController else { return }
            destinationVC.questionController = questionController
            
        } else if segue.identifier == "AnswerQuestion" {
            
            guard let destinationVC = segue.destination as? AnswerViewController,
            let indexPath = tableView.indexPathForSelectedRow
            else { return }
            
            destinationVC.questionController = questionController
            destinationVC.question = questionController.questions[indexPath.row]
            
        }
    }

}
