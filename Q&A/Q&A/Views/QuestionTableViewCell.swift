//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Linh Bouniol on 7/30/18.
//  Copyright © 2018 Linh Bouniol. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var askedByLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    
    private func updateViews() {
        guard let question = question else { return }
        
        questionLabel.text = question.question
        askedByLabel.text = question.asker
        
        // If the question was submitted (no answer yet), change the statusLabel "Could you answer this question?"
        if question.answer == nil {
            statusLabel.text = "Could you answer this question?"
        } else {
            statusLabel.text = "Tap to view the answer"
        }
        
        // If the answer was submitted, change the statusLabel to say "Tap to view the answer"
        
        
    }
    
}
