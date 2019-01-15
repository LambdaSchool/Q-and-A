//
//  ViewController.swift
//  QuestionAndAnswer
//
//  Created by Nelson Gonzalez on 1/15/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UITableViewController {

    let questionController = QuestionController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath)
        
        guard let questionCell = cell as? QuestionsTableViewCell else {return cell}
        
        let question = questionController.questions[indexPath.row]
        
        questionCell.question = question
        
        return questionCell
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        guard editingStyle == .delete else { return }
        
        // Implement here
        
        questionController.deleteQuestion(at: indexPath.row)
        tableView.reloadData()
    }

}

