//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Jocelyn Stuart on 1/15/19.
//  Copyright © 2019 JS. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    var questionController: QuestionController?
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    
     @IBOutlet weak var askerLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var answerTextView: UITextView!
    
    @IBAction func submitAnwerTapped(_ sender: UIBarButtonItem) {
        guard let nameText = nameTextField.text, let answerText = answerTextView.text else {return}
        
        //do we use questionLabel or var question in the update function
        
        if !nameText.isEmpty && !answerText.isEmpty {
            questionController?.update(question: question!, with: answerText, from: nameText)
            
            nameTextField.text = nil
            answerTextView.text = nil
            
            _ = navigationController?.popViewController(animated: true)
        }
    }
    
    func updateViews() {
        guard let question = question, isViewLoaded else { return }
    
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        nameTextField.text = question.answerer
        answerTextView.text = question.answer
    
   
    
    }

}
