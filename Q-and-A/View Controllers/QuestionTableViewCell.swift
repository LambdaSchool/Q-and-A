//
//  QuestionTableViewCell.swift
//  Q-and-A
//
//  Created by De MicheliStefano on 30.07.18.
//  Copyright © 2018 De MicheliStefano. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    // MARK: - Methods
    
    private func updateViews() {
        guard let question = question else { return }
        
        questionTextLabel.text = question.question
        askedByTextLabel.text = question.asker
        if let _ = question.answer {
            nextActionTextLabel.text = "Tap to view answer"
        } else {
            nextActionTextLabel.text = "Can you answer this?"
        }
    }
    
    
    // MARK: - Properties
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var askedByTextLabel: UILabel!
    @IBOutlet weak var nextActionTextLabel: UILabel!
    
}
