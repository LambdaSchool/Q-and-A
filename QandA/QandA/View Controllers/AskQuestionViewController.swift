//
//  AskQuestionViewController.swift
//  QandA
//
//  Created by Vijay Das on 1/23/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    var questionController: QuestionModelController?
    
    var question: Question?
    
    
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var questionTextView: UITextView!

    @IBAction func questionSubmitButton(_ sender: Any) {
        guard let questionText = questionTextView.text, !questionText.isEmpty,
            let asker = nameField.text, !asker.isEmpty else { return }
        questionController?.createQuestion(question: questionText, asker: asker)
        navigationController?.popViewController(animated: true)
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
