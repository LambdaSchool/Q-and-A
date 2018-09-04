//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Moin Uddin on 9/4/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    private func updateViews() {
        if(question?.answer != nil && question?.answerer != nil) {
            nameTextField?.text = question?.answerer
            answerTextView?.text = question?.answer
        }
        
        questionNameLabel?.text = question?.asker
        questionBodyLabel.text = question?.question
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitAnswer(_ sender: Any) {
        guard let name = nameTextField.text,
            let answer = answerTextView.text,
            let question = question
        else { return }
        
        questionController?.updateQuestion(question: question, answer: answer, answerer: name)
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var questionNameLabel: UILabel!
    @IBOutlet weak var questionBodyLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    var questionController: QuestionController?
    var question: Question?
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
