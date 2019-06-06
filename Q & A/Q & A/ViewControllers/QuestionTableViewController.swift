//
//  QuestionTableViewController.swift
//  Q & A
//
//  Created by Jake Connerly on 6/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
   
    let questionController = QuestionController()
    var askQuestionButtonTapped = false
    @IBAction func askQuestionButton(_ sender: Any) {
        askQuestionButtonTapped = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else { return UITableViewCell()}
        let cellQuestion = questionController.questions[indexPath.row]
        cell.question = cellQuestion

        return cell
    }
 
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            questionController.delete(questionToDelete: questionController.questions[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
            viewWillAppear(true)
        } else if editingStyle == .insert {
            
        }    
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AskQuestionSegue" {
            let askQuestionVC = segue.destination as! AskQuestionViewController
            let askVCQuestionController = questionController
            
        }
//     //   let selectedIndexPath = tableView.indexPathForSelectedRow!
       // let selectedQuestion = questionController.questions[selectedIndexPath.row]
       // let askQuestionVC = segue.destination as! AskQuestionViewController
    }
    

}


//let groceryDetailVC = segue.destination as! GroceryDetailViewController
//groceryDetailVC.groceryItem = selectedGroceryItem
