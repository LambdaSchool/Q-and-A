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
    
    //Unwrap Question Picker
    
    
    
    
    //Display Questions
    
    
    
    //On Submit Answer Click
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        guard let currentQuestion = questionPicker else { return }

        
        
        //Unwrap answer entries
        
        guard let theAnswer = answerEntry else { return }
        guard let theAnswerer = answererName else { return }
        
        //Append the answer to the existing question
        
        QuestionManager().update(needsUpdate: <#T##Question#>, answer: theAnswer, answerer: theAnswerer)
        
    }
    
    
    
    //Default code
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
}

}
