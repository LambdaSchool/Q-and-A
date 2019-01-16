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
    @IBOutlet weak var label3 : UILabel!
    @IBOutlet weak var label4 : UILabel!
    @IBOutlet weak var textView : UITextView!
    @IBOutlet weak var textField : UITextField!
    @IBAction func submit(sender: UIBarButtonItem){
        if(textField.text != nil && textField.text != "" && textView.text != nil && textView.text != ""){
            questionController?.update(question: &question!, answer: textView.text!, answerer: textField.text!)
            navigationController?.popViewController(animated: true)
        }else{
            let alert = UIAlertController(title: "Error", message: "Please make sure that no fields are blank", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true)
        }
    }
    func updateViews(){
        if(question?.answer != nil){
            textField.isHidden = true
            textView.isHidden = true
            label3.isHidden = false
            label4.isHidden = false
            label3.text = question?.answerer
            label4.text = question?.answer
        }else{
            textField.isHidden = false
            textView.isHidden = false
            label3.isHidden = true
            label4.isHidden = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
}
