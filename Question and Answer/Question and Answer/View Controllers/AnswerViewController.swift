//
//  AnswerViewController.swift
//  Question and Answer
//
//  Created by Lotanna Igwe-Odunze on 10/23/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

class AnswerView: UIViewController {
    
    @IBOutlet weak var answerEntry: UITextField!
    
    @IBOutlet weak var answererName: UITextField!
    
    @IBOutlet weak var questionViewLabel: UILabel!
    
    //Make sure of current question
    let current = IndexPath().row
    
    //Display Questions
    func pointless() {
        
        guard let theQuestion = questionViewLabel else { return }
        theQuestion.text = thequestions[current].question
        
        }
    
    
    
    //On Submit Answer Click
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        //Unwrap the entries
        guard let theAnswer = answerEntry.text else { return }
        guard let theAnswerer = answererName.text else { return }
        
        //Append the answer to the existing question
        
        QuestionManager().update(needsUpdate: thequestions[current], answer: theAnswer, answerer: theAnswerer)
        
        answerEntry.text = ""
        answererName.text = ""
        
    }
    
    //Default code
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
}

}
