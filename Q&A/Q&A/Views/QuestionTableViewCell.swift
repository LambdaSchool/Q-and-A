//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Paul Yi on 1/15/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    var question: Question? {
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var canYouAnswerLabel: UILabel!
    
    private func updateViews() {
        guard let question = question else { return }
        questionLabel.text = question.question
        askerLabel.text = question.answer
        
        if question.answer == nil && question.answerer == nil {
            canYouAnswerLabel.text = "Can you answer this?"
        } else {
            canYouAnswerLabel.text = question.answer
        }
    }
}
