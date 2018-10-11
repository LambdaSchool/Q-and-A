//
//  QuestionTableViewController.swift
//  Q-A
//
//  Created by Yvette Zhukovsky on 10/10/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    
    
    let qc = QuestionController()

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath)
        guard let qcell = cell as? QuestionTableViewCell else { return cell }
        
        qcell.q = qc.questions[indexPath.row]
        //noteCell.delegate = self
        
        return qcell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return qc.questions.count
     
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            qc.Delete(question: qc.questions[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    


    
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

}
