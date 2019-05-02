//
//  QuestionTableViewCell.swift
//  Q and A
//
//  Created by Michael Stoffer on 5/2/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let question = self.question else { return }
        
        self.questionLabel.text = question.question
        self.askedByLabel.text = question.asker
    }
}
