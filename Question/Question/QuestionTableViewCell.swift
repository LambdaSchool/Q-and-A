//
//  QuestionTableViewCell.swift
//  Question
//
//  Created by Farhan on 9/3/18.
//  Copyright © 2018 Farhan. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var askedNameLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
  
    func updateViews(){
        
        guard let qText = question?.question, let qAsker = question?.asker else {return}
        questionLabel.text = qText
        askedNameLabel.text = qAsker
        
        
    }

}
