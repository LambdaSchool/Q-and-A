//
//  QuestionTableViewController.swift
//  Question
//
//  Created by Farhan on 9/3/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    let questionController = QuestionController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else {return UITableViewCell()}

        // Configure the cell...
        
        let question = questionController.questions[indexPath.row]
        cell.question = question
        

        return cell
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            let questionToDelete = questionController.questions[indexPath.row]
            questionController.deleteQuestion(question: questionToDelete)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AskSegue" {
            
            guard let destinationVC = segue.destination as? AskQuestionViewController else {return}
            destinationVC.questionController = questionController
            
        } else if segue.identifier == "AnswerSegue" {
            
            guard let destinationVC = segue.destination as? AnswerViewController else {return}
            destinationVC.questionController = questionController
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            destinationVC.question = questionController.questions[indexPath.row]
            
        }
        
    }
    

}
