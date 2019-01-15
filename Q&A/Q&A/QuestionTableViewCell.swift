//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Moses Robinson on 1/15/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    private func updateViews() {
        guard let question = question else { return }
        
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        if question.answer != nil {
            answerLabel.text = "Tap to reveal answer! 👍"
        } else {
            answerLabel.text = "No answer yet... 👎"
        }
    }
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
}
