//
//  QuestionTableViewController.swift
//  theRealQnA
//
//  Created by Diante Lewis-Jolley on 4/25/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
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

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! QuestionTableViewCell
        let questions = questionController.questions[indexPath.row]

        cell.askerLabel.text = questions.asker
        cell.answerLabel.text = questions.answer
        cell.questionLabel.text = questions.question



        // Configure the cell...

        return cell
    }



    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            let questions = questionController.questions[indexPath.row]
            questionController.delete(question: questions)
            tableView.reloadData()
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

        if segue.identifier == "toAnswer" {
            guard let AnswerVC = segue.destination as? AnswerViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
                    let question = questionController.questions[indexPath.row]
            AnswerVC.question = question
            AnswerVC.questionController = questionController


        } else {
            if segue.identifier == "toAskQuestion" {
                guard let AskQuestionVC = segue.destination as? QuestionViewController else { return }

                AskQuestionVC.questionController = questionController
            }
        }


    }


}
