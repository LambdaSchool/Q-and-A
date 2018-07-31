//
//  QuestionTableViewController.swift
//  Q&A
//
//  Created by Linh Bouniol on 7/30/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! QuestionTableViewCell

        let question = questionController.questions[indexPath.row]
        
        // Pass instance of Question to cell
        cell.question = question

        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let question = questionController.questions[indexPath.row]
            questionController.delete(question: question)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
