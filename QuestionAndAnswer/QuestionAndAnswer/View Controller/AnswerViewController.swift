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
    
    
}
