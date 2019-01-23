//
//  QuestionsTableViewCell.swift
//  QandA
//
//  Created by Vijay Das on 1/23/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
//    var question: Question?
    
    private func updateViews() {
        questionLabel.text = question?.question
        askerLabel.text = question?.asker
        
        if question?.answer != nil {
            answerLabel.text = "Tab to view answer"
            
        } else {
            answerLabel.text = "Can you answer this?"
        }
        
        
        
    }
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    
    

}
