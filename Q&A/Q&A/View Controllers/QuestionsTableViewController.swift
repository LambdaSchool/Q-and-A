//
//  QuestionsTableViewController.swift
//  Q&A
//
//  Created by Stuart on 1/15/19.
//  Copyright © 2019 Stuart. All rights reserved.
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

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath)
        
        guard let questionCell = cell as? QuestionTableViewCell else { return cell }

        let question = questionController.questions[indexPath.row].question
        let asker = questionController.questions[indexPath.row].asker
        
        questionCell.questionLabel.text = question
        questionCell.askerLabel.text = asker
        
        return questionCell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            questionController.delete(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAnswerView" {
            guard let destinationVC = segue.destination as? AskQuestionViewController else { return }

        } else if segue.identifier == "toQuestionView" {
            guard let destinationVC = segue.destination as? AnswerViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
        }

    }
    
    // MARK: - IBOutlets & Properties
    
    let questionController = QuestionController()
}
