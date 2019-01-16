//
//  QuestionTableViewController.swift
//  Q-And-A
//
//  Created by Angel Buenrostro on 1/15/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    let questionController = QuestionController()

    @IBAction func askQuestionButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "askSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questioncell", for: indexPath)
        guard let unwrappedCell = cell as? QuestionTableViewCell else { return cell }

        let question = questionController.questions[indexPath.row]
        unwrappedCell.question = question
        //unwrappedCell.delegate = self

        return unwrappedCell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
