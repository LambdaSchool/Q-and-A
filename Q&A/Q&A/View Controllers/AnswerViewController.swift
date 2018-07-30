//
//  AnswerViewController.swift
//  Q&A
//
//  Created by Linh Bouniol on 7/30/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var askerLabel: UILabel!
    @IBOutlet var answererTextField: UITextField!
    @IBOutlet var answerTextView: UITextView!
    
    @IBAction func submitAnswer(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
