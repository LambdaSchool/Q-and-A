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
    }
 
    var question: Question?
    @IBOutlet weak var questionAppear: UILabel!
    @IBOutlet weak var askerAppearLabel: UILabel!
}
