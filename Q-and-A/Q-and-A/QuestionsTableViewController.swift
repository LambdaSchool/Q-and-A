//
//  ViewController.swift
//  Q-and-A
//
//  Created by Vijay Das on 10/10/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let reuseIdentifier = "cell"
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return QuestionController.shared.questions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
            else { fatalError("Failed cell guarantee") }
        
        cell.textLabel?.text = QuestionController.shared.questions[indexPath.row].question
        
        return cell
    }
    
}

