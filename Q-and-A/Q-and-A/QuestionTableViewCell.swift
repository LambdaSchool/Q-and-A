//
//  QuestionTableViewCell.swift
//  Q-and-A
//
//  Created by Alex Shillingford on 6/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let unwrappedQuestion = question else { return }
        
        questionTextLabel.text = unwrappedQuestion.question
        askedByLabel.text = unwrappedQuestion.asker
    }
    
}
