//
//  QuestionTableViewController.swift
//  Q&A
//
//  Created by Nikita Thomas on 10/10/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    let questionController = QuestionController()
    // MARK: - Table view data source
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? QuestionTableViewCell else {return UITableViewCell()}
        cell.question = questionController.questions[indexPath.row]
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            questionController.delete(question: questionController.questions[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "toAskQuestion") {
            guard let askQuestionVC = segue.destination as? AskQuestionViewController else {return}
            askQuestionVC.questionController = questionController
            
            
        } else if (segue.identifier == "toAnswer") {
            guard let answerVC = segue.destination as? AnswerViewController else {return}
            answerVC.questionController = questionController
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            answerVC.question = questionController.questions[indexPath.row]

        }
    }
}
