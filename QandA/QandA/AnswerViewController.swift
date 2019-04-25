//
//  AnswerViewController.swift
//  QandA
//
//  Created by Jeffrey Carpenter on 4/25/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonPressed(_ sender: UIBarButtonItem) {
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
