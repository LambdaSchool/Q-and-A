//
//  QuestionTableViewController.swift
//  Q&A
//
//  Created by Jocelyn Stuart on 1/15/19.
//  Copyright © 2019 JS. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    let questionController = QuestionController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "qaCell", for: indexPath)
        
        guard let unwrappedCell = cell as? QuestionTableViewCell else { return cell }
        
        let question = questionController.questions[indexPath.row]
        unwrappedCell.question = question
       // unwrappedCell.delegate = self

        return unwrappedCell
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        guard editingStyle == .delete else { return }
        
        // Implement here
        let question = questionController.questions[indexPath.row]
        questionController.delete(question: question)
        tableView.reloadData()
        
    }
 
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "askQ" {
            guard let askQuestionController = segue.destination as? AskQuestionViewController else { return }
            
            askQuestionController.questionController = questionController
            
        } else if segue.identifier == "answerQ" {
            guard let answerController = segue.destination as? AnswerViewController, let cell = sender as? QuestionTableViewCell else { return }
            
           // let indexPath = tableView.indexPathForSelectedRow
            
            answerController.questionController = questionController
            
            answerController.question = cell.question
            
        }
       
    }
    
    
}
