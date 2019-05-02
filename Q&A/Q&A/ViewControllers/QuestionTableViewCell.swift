//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Hayden Hastings on 5/2/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    private func updateViews() {
        guard let question = question else { return }
        
        questionLabel.text = question.question
        askedByLabel.text = question.asker
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var directionLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
}
