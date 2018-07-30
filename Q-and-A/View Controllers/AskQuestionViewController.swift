//
//  AskQuestionViewController.swift
//  Q-and-A
//
//  Created by De MicheliStefano on 30.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {

    // MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitQuestion(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    // MARK: - Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var questionTextView: UITextView!
    

}
