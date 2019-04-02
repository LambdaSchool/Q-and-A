//
//  AskViewController.swift
//  Question and Answer
//
//  Created by Lotanna Igwe-Odunze on 10/23/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

class AskViewController: UIViewController {
    
    
    @IBOutlet weak var questionField: UITextField!
    @IBOutlet weak var askerField: UITextField!
    
    @IBAction func submitQbutton(_ sender: UIButton) {
        
        //Unwrap the contents of the fields
        
        guard var submission = questionField.text else { return }
        guard var person = askerField.text else { return }
        
        //Create new Question
        QuestionManager().create(question: submission, asker: person)
        
        //Reset the Fields
        submission = ""
        person = ""
        
        //
        
        
        
    } // End of submit button
    
}
