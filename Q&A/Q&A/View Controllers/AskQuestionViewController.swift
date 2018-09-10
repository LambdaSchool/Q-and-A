//
//  AskQuestionViewController.swift
//  Q&A
//
//  Created by Welinkton on 9/9/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func submitQuestionButton(_ sender: Any) {
        
    }
    
    @IBOutlet weak var submitQuestionTextField: UITextField!
    
    @IBOutlet weak var submitQuestionTextView: UITextView!
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
