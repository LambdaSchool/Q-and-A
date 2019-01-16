//
//  AnswerViewController.swift
//  QuestionAndAnswer
//
//  Created by Dustin Koch on 1/15/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    var questionController: QuestionController?
    var question: Question?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
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

    
    //MARK: - Outlets
    
    @IBOutlet weak var questionAsked: UILabel!
    @IBOutlet weak var personAsked: UILabel!
    @IBOutlet weak var nameAnswered: UITextField!
    @IBOutlet weak var answerProvided: UITextView!
    @IBAction func answerButtonTapped(_ sender: UIBarButtonItem) {
        
        guard let answer = answerProvided.text else { return }
        guard let name = nameAnswered.text else { return }
        guard let question = question else { return }
        
        
        if answer != "" && name != "" {
            questionController?.update(specificQuestion: question, answer: answer, answerer: name)
        }
        
        navigationController?.popViewController(animated: true)
        
    }
    
    func updateViews() {
        
        guard let question = question else { return }
        questionAsked.text = question.question
        personAsked.text = question.asker
        title = question.question
        
        guard let answer = question.answer else { return }
        guard let answerer = question.answerer else { return }
        answerProvided.text = answer
        nameAnswered.text = answerer
        
    }
    
    
}
