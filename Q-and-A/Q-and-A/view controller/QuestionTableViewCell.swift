//
//  QuestionTableViewCell.swift
//  Q-and-A
//
//  Created by Iyin Raphael on 8/6/18.
//  Copyright © 2018 Iyin Raphael. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    func updateView(){
        guard let cellQuestion = question else {return}
        
        questionAppear.text = cellQuestion.question
        askerAppearLabel.text = cellQuestion.asker
        
        if cellQuestion.answer == nil {
            answerLabel.text = "Can you answer this?"
        } else {
            answerLabel.text = "Tap to see answer."
        }
        
    }
    @IBOutlet weak var answerLabel: UILabel!
    
    var question: Question?{
        didSet{
            updateView()
        }
    }
    @IBOutlet weak var questionAppear: UILabel!
    @IBOutlet weak var askerAppearLabel: UILabel!
}
