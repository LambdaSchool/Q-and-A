//
//  QuestionsTableViewController.swift
//  QandA
//
//  Created by Lisa Sampson on 8/6/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)

        guard let questionCell = cell as? QuestionsTableViewCell else { return cell }
        let question = questionController.questions[indexPath.row]
        
        questionCell.question = question
        
        return cell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let question = questionController.questions[indexPath.row]
            questionController.delete(questionAsked: question)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AskQuestionSegue" {
            guard let detailVC = segue.destination as? AskQuestionViewController else { return }
            
            detailVC.questionController = questionController
        } else if segue.identifier == "SubmitAnswerSegue" {
            guard let detailVC = segue.destination as? AnswerViewController,
                let index = tableView.indexPathForSelectedRow else { return }
            
            detailVC.questionController = questionController
            detailVC.question = questionController.questions[index.row]
        }
    }
    
    let questionController = QuestionController()

    
}
