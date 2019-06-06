//
//  QuestionTableViewCell.swift
//  Q & A
//
//  Created by Jake Connerly on 6/6/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    //MARK: - Outlets and properties
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    //MARK: - Methods
    
    private func updateViews() {
        guard let unwrappedQuestion = question else { return }
        questionLabel.text = unwrappedQuestion.question
        askedByLabel.text = unwrappedQuestion.asker
        
    }
}
