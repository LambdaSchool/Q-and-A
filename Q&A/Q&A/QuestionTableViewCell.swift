//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Nathanael Youngren on 1/15/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    private func updateViews() {
        guard let unwrappedQuestion = question else { return }
        questionLabel.text = unwrappedQuestion.question
        askerLabel.text = unwrappedQuestion.asker
    }
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    

}
