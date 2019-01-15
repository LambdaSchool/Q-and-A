//
//  QuestionsTableViewController.swift
//  Q&A
//
//  Created by Moses Robinson on 1/15/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    let reuseIdentifier = "questionCell"
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! QuestionTableViewCell

        let question = questionController.questions[indexPath.row]
        cell.question = question
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        let question = questionController.questions[indexPath.row]
        if editingStyle == .delete {
            questionController.deleteQuestion(question: question)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 
    //MARK: - Properties
    
    let questionController = QuestionController()
}
