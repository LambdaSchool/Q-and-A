//
//  QuestionTableViewController.swift
//  Q and A
//
//  Created by Michael Stoffer on 5/2/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    let questionController = QuestionController()
    @IBOutlet var questionTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.questionTableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else { return UITableViewCell() }
        
        cell.questionLabel.text = self.questionController.questions[indexPath.row].question
        cell.askedByLabel.text = self.questionController.questions[indexPath.row].asker
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let question = self.questionController.questions[indexPath.row]
            self.questionController.deleteQuestion(question: question)
            self.questionTableView.deleteRows(at: [indexPath], with: .none)
            self.questionTableView.reloadData()
        }
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToAskQuestion" {
             guard let askQuestionViewController = segue.destination as? AskQuestionViewController else { return }
            
            askQuestionViewController.questionController = self.questionController
        } else if segue.identifier == "ToAnswer" {
            guard let indexPath = questionTableView.indexPathForSelectedRow,
                let answerViewController = segue.destination as? AnswerViewController else { return }
            
            let question = self.questionController.questions[indexPath.row]
            
            answerViewController.questionController = self.questionController
            answerViewController.question = question
        }
    }
}
