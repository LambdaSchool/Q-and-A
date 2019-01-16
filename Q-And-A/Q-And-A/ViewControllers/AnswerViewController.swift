//
//  AnswerViewController.swift
//  Q-And-A
//
//  Created by Angel Buenrostro on 1/15/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    var questionController: QuestionController? = nil
    
    var question: Question? = nil

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answererLabel: UITextField!
    @IBOutlet weak var answerView: UITextView!
    @IBAction func submitAnswerTapped(_ sender: Any) {
        guard let answererLabel = answererLabel?.text else { return }
        guard let answerView = answerView?.text else { return }
        
        questionController?.Update(question: question!, answer: answerView, answerer: answererLabel)
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func updateViews(){
        let answer = self.question?.answer
        let answerer = self.question?.answerer
        let name = self.question?.asker
        let question = self.question?.question
        nameLabel.text = name
        questionLabel.text = question
        answererLabel.text = answerer
        answerView.text = answer
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
