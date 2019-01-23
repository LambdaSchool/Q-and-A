//
//  QuestionsTableViewController.swift
//  QandA
//
//  Created by Vijay Das on 1/23/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {
    
    let questionController = QuestionModelController()
    let reuseIdentifier = "questionCell"
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
  
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! QuestionsTableViewCell

        // Configure the cell...
        
        let question = questionController.questions[indexPath.row]
        cell.question = question

        return cell
    }



    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        let question = questionController.questions[indexPath.row]
        
        
        if editingStyle == .delete {
            // Delete the row from the data source
            questionController.deleteQuestion(question: question)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        //else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    

  // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "askQuestionSegue" {
            
            guard let askQuestionVC = segue.destination as? AskQuestionViewController else { return }
            askQuestionVC.questionController = questionController
            
        } else if segue.identifier == "answerSegue" {
            
            guard let answerQuestionVC = segue.destination as? AnswerViewController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            answerQuestionVC.questionController = questionController
            answerQuestionVC.question = questionController.questions[indexPath.row]
            
        }
        
        
        
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
   

}
