//
//  QuestionsTableViewController.swift
//  Q&A
//
//  Created by Moin Uddin on 9/3/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else { return UITableViewCell() }
        let question = questionController.questions[indexPath.row]
        cell.question = question

        return cell
    }




    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let question = questionController.questions[indexPath.row]
            questionController.deleteQuestion(question: question )
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "AnswerQuestion") {
            guard let answerQuestionVC = segue.destination as? AnswerViewController else { return }
            answerQuestionVC.questionController = questionController
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            answerQuestionVC.question = questionController.questions[indexPath.row]
        } else if(segue.identifier == "AskQuestion") {
            guard let askQuestionVC = segue.destination as? AskQuestionViewController else { return }
            askQuestionVC.questionController = questionController
        }
    }
    
    let questionController = QuestionController()


}
