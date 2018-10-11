//
//  AskViewController.swift
//  Q-and-A
//
//  Created by Vijay Das on 10/11/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import UIKit

class AskViewController: UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var indexPath: IndexPath? = nil
    
    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    @objc
    func addQuestion()
    {
        // question: I mimiced Erica's code on this and I am not clear 
        
        if let asker = field.text, let questionText = textView.text {
            let question = Question(asker: asker, question: questionText)
            QuestionController.shared.questions.append(question)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @objc
    func saveQuestion()
    {
        
        guard let indexPath = indexPath else {
            fatalError("Failed to unwrap guaranteed indexPath")
        }
        
        if let asker = field.text, let questionText = textView.text {
            let question = Question(asker: asker, question: questionText)
            QuestionController.shared.questions[indexPath.row] = question
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let indexPath = indexPath {
            assert(indexPath.row < QuestionController.shared.questions.count, "Out of range indexPath")
            
            let question = QuestionController.shared.questions[indexPath.row]
            field.text = question.asker
            textView.text = question.question
        }
        
        let barButton = UIBarButtonItem(title: nil, style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem = barButton
        switch indexPath {
        case nil: // new record
            barButton.title = "Ask Question"
            barButton.action = #selector(addQuestion)
        default: // modify record
            barButton.title = "Submit Question"
            barButton.action = #selector(saveQuestion)
        }
    }
}




