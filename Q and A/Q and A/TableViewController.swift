//
//  TableViewController.swift
//  Q and A
//
//  Created by Cameron Dunn on 1/15/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import Foundation
import UIKit

class TableViewController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! CustomTableViewCell
        cell.questionLabel.text = questionController.questions[indexPath.row].question
        cell.askedByLabel.text = questionController.questions[indexPath.row].asker
        if(questionController.questions[indexPath.row].answer == nil){
            cell.infoLabel.text = "Can you answer this?"
        }else{
            cell.infoLabel.text = "Tap to view answer."
        }
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    let questionController = QuestionController()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "AnswerQuestionSegue"){
            let answerViewController = AnswerViewController()
            let indexPath = tableView.indexPath(for: sender as! CustomTableViewCell)
            answerViewController.question = questionController.questions[indexPath!.row]
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            questionController.delete(indexPath: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } 
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
}
