//
//  AskQuestionViewController.swift
//  Q-And-A
//
//  Created by Angel Buenrostro on 1/15/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    var questionController: QuestionController? = nil

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBAction func submitButton(_ sender: Any) {
        guard let nameText = textField?.text, textField?.text != "" else { return }
        guard let questionText = textView?.text, textView?.text != ""  else { return }
        questionController?.Create(question: questionText, asker: nameText, answer: nil, answerer: nil)
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
