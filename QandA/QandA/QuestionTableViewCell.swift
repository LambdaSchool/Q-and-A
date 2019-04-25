//
//  QuestionTableViewCell.swift
//  QandA
//
//  Created by Jeffrey Carpenter on 4/25/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        
        guard let question = question else { return }
        
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        if let answer =  question.answer {
            answerLabel.text = answer
        } else {
            answerLabel.text = ""
        }
        
    }
    
}
