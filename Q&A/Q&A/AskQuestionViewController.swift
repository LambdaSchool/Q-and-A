//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Moin Uddin on 9/3/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submitQuestion(_ sender: Any) {
        guard let name = nameTextField.text,
            let question = questionTextView.text
            else { return }
        questionController?.createQuestion(question: question, asker: name)
        navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    
    var questionController: QuestionController?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
