//
//  File.swift
//  Q&AApp
//
//  Created by Lambda_School_Loaner_18 on 10/10/18.
//  Copyright © 2018 Lambda_School_Loaner_18. All rights reserved.
//

import UIKit

class AskQuestionVC: UIViewController {
    var questionsContoller: QuestionController?

    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var textView: UITextView!



    override func viewDidLoad() {
        super.viewDidLoad()
}

    @IBAction func submitQuestion(_ sender: Any) {

guard let name = textField.text,
    let question = TextView.text
    else {return}
    questionController?.createQuestion(question: question, asker: name)
    navigationController?.popViewController(animated: true)
}

    
    // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let detailViewController = segue.destination as? QuestionController
    else { fatalError("segue destination failed")}
    
    guard let identifier = segue.identifier
    else {fatalError("no seque identifier provided")}

    switch identifier {
    case "askQuestionSegue":
        detailViewController.indexPath = nil
    
    case "answerQuestionSegue":
        guard let indexPath = tableView.indexPathForSelectedRow
    else {return}
        detailViewController.indexPath = nil
    }
}
