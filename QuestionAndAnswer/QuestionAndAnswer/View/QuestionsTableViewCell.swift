//
//  QuestionTableViewCell.swift
//  QuestionAndAnswer
//
//  Created by Nelson Gonzalez on 1/15/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    
    
    
    func updateViews() {
        guard let question = question else {return}
        questionLabel.text = question.question
        askedByLabel.text = question.asker
        
    }
    

}
