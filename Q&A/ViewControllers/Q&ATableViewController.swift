//
//  Q&ATableViewController.swift
//  Q&A
//
//  Created by Carolyn Lea on 7/30/18.
//  Copyright © 2018 Carolyn Lea. All rights reserved.
//

import UIKit

class Q_ATableViewController: UITableViewController {
    
    let questionController = QuestionController()
    let questions: [Question] = []
    
    override func viewWillAppear(_ animated: Bool) {
        
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return questionController.questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "QACell", for: indexPath)
        guard let questionCell = cell as? Q_AListCell else {return cell}
        
        let question = questionController.questions[indexPath.row]
        
        questionCell.question = question
        questionCell.questionLabel.text = question.aQuestion
        questionCell.askedByLabel.text = question.asker
        questionCell.answerLabel.text = question.answer
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            let question = questionController.questions[indexPath.row]
            questionController.deleteQuestion(question: question)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ToAskQuestion" {
            
            guard let askViewController = segue.destination as? AskQuestionViewController else {return}
            
            askViewController.questionController = questionController
            
        } else if segue.identifier == "ToAnswerView" {
            
            guard let answerViewController = segue.destination as? AnswerQuestionViewController,
                let indexPath = tableView.indexPathForSelectedRow else {return}
            
            answerViewController.questionController = questionController
            answerViewController.question = questionController.questions[indexPath.row]
            
            
        }
    }
    

}
