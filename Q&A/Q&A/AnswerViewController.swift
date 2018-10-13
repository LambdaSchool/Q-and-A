//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Nikita Thomas on 10/10/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    var questionController: QuestionController?
    var question: Question?
    
    @IBAction func submitPressed(_ sender: Any) {
        guard let nameText = textField.text else {return}
        guard let questionText = textView.text else {return}
        
        if !nameText.isEmpty && !questionText.isEmpty {
            questionController?.update(question: question!, answer: questionText, answerer: nameText)
            navigationController?.popViewController(animated: true)
        }
        
    }
    
    func updateViews() {
        askerLabel.text = question?.asker
        questionLabel.text = question?.question
        guard let hasAnswer = question?.answer else {return}
        guard let hasAnswerer = question?.answerer else {return}
        textField.text = hasAnswerer
        textView.text = hasAnswer
    }
    
    override func viewWillAppear(_ animated: Bool) {
        updateViews()
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
