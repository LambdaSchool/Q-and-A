//
//  QuestionsTableViewController.swift
//  Q-and-A
//
//  Created by Iyin Raphael on 8/6/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }


   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else {return UITableViewCell()}
        let question = questionController.questions[indexPath.row]
        cell.askerAppearLabel.text = question.asker
        cell.questionAppear.text = question.question
        return cell
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        <#code#>
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AskQuestion"{
           
        }
    }

    
    var questionController = QuestionController()

}
