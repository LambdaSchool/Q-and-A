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
    @IBOutlet weak var answeredByLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let unwrappedQuestion = question else { return }
        if unwrappedQuestion.answer != nil && unwrappedQuestion.answerer != nil {
            answeredByLabel.text = "Answered by: \(unwrappedQuestion.answerer!)"
            questionTextLabel.text = unwrappedQuestion.question
            askedByLabel.text = unwrappedQuestion.asker
        } else {
            answeredByLabel.text = "Not Yet Answered"
            questionTextLabel.text = unwrappedQuestion.question
            askedByLabel.text = unwrappedQuestion.asker
        }
        
    }
    
}
