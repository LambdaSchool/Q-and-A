//
//  QuestionsTableViewController.swift
//  Q&A
//
//  Created by Jeremy Taylor on 2/10/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
    let questionController = QuestionController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return questionController.questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else { fatalError("Can't get QuestionTableviewCell!") }
        
        let question = questionController.questions[indexPath.row]

        cell.question = question

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    

    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let question = questionController.questions[indexPath.row]
            questionController.delete(question: question)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AskQuestion" {
            guard let destinationVC = segue.destination as? AskQuestionViewController else { return }
            destinationVC.questionController = questionController
        } else if segue.identifier == "SubmitAnswer" {
            guard let destinationVC = segue.destination as? AnswerViewController else { return }
            
            destinationVC.questionController = questionController
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let question = questionController.questions[indexPath.row]
            destinationVC.question = question
        }
    }
}
