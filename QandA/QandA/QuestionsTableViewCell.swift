//
//  QuestionsTableViewCell.swift
//  QandA
//
//  Created by Lisa Sampson on 8/6/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {

    private func updateViews() {
        guard let question = question else { return }
        
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        if question.answer == nil {
            answerLabel.text = "Can you answer this?"
        } else {
            answerLabel.text = "Tap to see answer."
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
