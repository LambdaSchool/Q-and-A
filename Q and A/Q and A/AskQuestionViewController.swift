//
//  AskQuestionViewController.swift
//  Q and A
//
//  Created by Cameron Dunn on 1/15/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    let questionController = QuestionController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func submitQuestion(_ sender: Any) {
        if(textView.text != nil && textView.text != "" && textField.text != nil && textField.text != ""){
            questionController.create(question: textView.text!, asker: textField.text!, answer: nil, answerer: nil)
            navigationController?.popViewController(animated: true)
        }else{
            let alert = UIAlertController(title: "Error", message: "Please make sure that no fields are blank", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true)
        }
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
