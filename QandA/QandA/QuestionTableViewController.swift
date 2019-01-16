//
//  QuestionTableViewController.swift
//  QandA
//
//  Created by Michael Flowers on 1/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    //instead of using a shared instance, we are going to use this instance and pass it around to our other view controllers using the segue function at the bottom
    let questionController = QuestionController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create cell and set it to our custome table view cell class
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as? QuestionsTableViewCell else { return UITableViewCell() }
        
        //get our data model
        let question = questionController.questions[indexPath.row]
        
        //now that we have our data model object, we can pass it to the property in our QuestionsTableViewCell file
        cell.question = question
      
        //return the cell
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // grab the data model to delete
            let questionToDelete = questionController.questions[indexPath.row]
            
            //now that we have the data model object to delete we can call our delete function and delete it from our model's array
            questionController.delete(question: questionToDelete)
            
            //after we've deleted it from our model's array we can delete the row/cell on the view.
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        if segue.identifier == "toQuestion" {
            if let askVC = segue.destination as? AskQuestionViewController {
                askVC.questionController = questionController
            }
        } else if segue.identifier == "toAnswer" {
            if let ansVC = segue.destination as? AnswerViewController {
                guard let index = tableView.indexPathForSelectedRow else { return }
                let selectedQuestion = questionController.questions[index.row]
                ansVC.questionController = questionController
                ansVC.question = selectedQuestion
            }
        }
        // Pass the selected object to the new view controller.
    }
 

}
