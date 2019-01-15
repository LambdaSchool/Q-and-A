//
//  QuestionsTableViewController.swift
//  Q&A
//
//  Created by Nathanael Youngren on 1/15/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath)
        guard let questionCell = cell as? QuestionTableViewCell else { return cell }
        
        let question = questionController.questions[indexPath.row]
        questionCell.question = question
        return questionCell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        questionController.delete(at: indexPath.row)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AnswerSegue" {
            guard let answerVC = segue.destination as? AnswerViewController,
            let cell = sender as? QuestionTableViewCell else { return }
            answerVC.question = cell.question
            answerVC.questionController = questionController
        } else if segue.identifier == "AskQuestionSegue" {
            guard let askQuestionVC = segue.destination as? AskQuestionViewController else { return }
            askQuestionVC.questionController = questionController
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    var questionController = QuestionController()

}
