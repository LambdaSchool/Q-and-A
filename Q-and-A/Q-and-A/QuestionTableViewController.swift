//
//  QuestionTableViewController.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    // MARK: - Lifecycle Methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Reload the tableview data before it appears
        tableView.reloadData()
    }
    
    // MARK: - Properties
    let questionController = QuestionController()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Make sure the cell can be cast as a question table view cell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else { return UITableViewCell() }
        //Get the question from the question controller
        let question = questionController.questions[indexPath.row]
        
        //Pass the question to the cell, so that it can set itself up
        cell.question = question
        
        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Get the question from teh question controller
            let question = questionController.questions[indexPath.row]
            //Delete the question via the question controller's api
            questionController.delete(question)
            //Delete the row from the table
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Check if we are asking or answering a question
        if segue.identifier == "AskQuestionSegue" {
            //Make sure the destination can be cast as an ask question VC
            guard let destinationVC = segue.destination as? AskQuestionViewController else { return }
            
            //Set the destination's question controller
            destinationVC.questionController = questionController
        } else if segue.identifier == "AnswerQuestionSegue" {
            //Make sure the destination can be cast as an answer question VC, and that we can get the question from the cell
            guard let destinationVC = segue.destination as? AnswerQuestionViewController,
            let cell = sender as? QuestionTableViewCell,
            let question = cell.question else { return }
            
            //Set the destination's question controller and question
            destinationVC.questionController = questionController
            destinationVC.question = question
        }
    }


}
