//
//  AskQuestionViewController.swift
//  QandA
//
//  Created by Michael Flowers on 1/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: Any) {
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
