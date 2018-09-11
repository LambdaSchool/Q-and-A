//
//  QuestionTableViewController.swift
//  Q&A
//
//  Created by Welinkton on 9/9/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

   let questionController = QuestionController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else {return UITableViewCell() }
        
        let question = questionController.questions[indexPath.row]
        cell.question = question
        return cell
    }
 
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let question = questionController.questions[indexPath.row]
            questionController.deleteQuestion(question: question)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {}
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "ShowAnswer") {
            guard let showAnswerVC = segue.destination as? AnswerViewController else {return}
            showAnswerVC.questionConroller = questionController
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            showAnswerVC.question = questionController.questions[indexPath.row]
            
        } else if (segue.identifier == "askQuestionSegue") {
            guard let askQuestionSegueVC = segue.destination as? AskQuestionViewController else {return}
            askQuestionSegueVC.questionController = questionController
        }
        }
        
    }
    


