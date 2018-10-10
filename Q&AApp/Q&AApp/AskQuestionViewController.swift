//
//  File.swift
//  Q&AApp
//
//  Created by Lambda_School_Loaner_18 on 10/10/18.
//  Copyright © 2018 Lambda_School_Loaner_18. All rights reserved.
//


import UIKit

class AskQuestionViewController: UIViewController {
    
    var questionController: QuestionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   // use short names like name
    
    
    @IBAction func name(_ sender: Any) {
        guard let submitQuestionTextField = submitQuestionTextField.text,
            let submitQuestionTextView = submitQuestionTextView.text else {return}
        // just question text
        
        questionController?.createQuestion(question: submitQuestionTextView, asker: submitQuestionTextField)
        navigationController?.popViewController(animated: true)
    }
    
   
    
    @IBOutlet weak var submitQuestionTextField: UITextField!
    
    @IBOutlet weak var submitQuestionTextView: UITextView!
}
