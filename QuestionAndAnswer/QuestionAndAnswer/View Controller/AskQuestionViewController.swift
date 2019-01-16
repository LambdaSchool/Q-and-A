//
//  AskQuestionViewController.swift
//  QuestionAndAnswer
//
//  Created by Dustin Koch on 1/15/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    
    var questionController: QuestionController?
    

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
    @IBOutlet weak var questionName: UITextField!
    @IBOutlet weak var questionContext: UITextView!
    @IBAction func submitQuestionTapped(_ sender: UIBarButtonItem) {
        
        guard let name = questionName.text else { return }
        guard let question = questionContext.text else { return }
        
        questionController?.create(question: question, asker: name, answer: nil, answererer: nil)
        
        performSegue(withIdentifier: "toQuestion", sender: self)
        
    }
    
    
    
}
