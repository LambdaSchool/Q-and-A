//
//  AnswerViewController.swift
//  Q and A
//
//  Created by Cameron Dunn on 1/15/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import Foundation
import UIKit

class AnswerViewController : UIViewController{
    var questionController : QuestionController?
    var question : Question?
    @IBOutlet weak var label1 : UILabel!
    @IBOutlet weak var label2 : UILabel!
    @IBOutlet weak var textView : UITextView!
    @IBOutlet weak var textField : UITextField!
    @IBAction func submit(sender: UIBarButtonItem){
        if(textField.text != nil && textField.text != "" && textView.text != nil && textView.text != ""){
            questionController?.update(question: question!, answer: textView.text!, answerer: textField.text!)
            navigationController?.popViewController(animated: true)
        }else{
            let alert = UIAlertController(title: "Error", message: "Please make sure that no fields are blank", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true)
        }
    }
    func updateViews(){
        guard isViewLoaded else {return}
        if(question?.answer != nil){
            //if question does have an answer
            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
            label1.text = question?.asker
            label2.text = question?.question
            textField.text = question?.answerer
            textView.text = question?.answer
            textView.isEditable = false
            textField.isEnabled = false
        }else{
            //if question does not have an answer
            label1.text = question?.asker
            label2.text = question?.question
            textField.placeholder = "Enter name here..."
            textView.text = "Enter answer here..."
            textView.isEditable = true
            textField.isEnabled = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
}
