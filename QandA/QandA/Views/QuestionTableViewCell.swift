//
//  QuestionTableViewCell.swift
//  QandA
//
//  Created by Kat Milton on 6/6/19.
//  Copyright © 2019 Kat Milton. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    // MARK: - Outlets and properties
    @IBOutlet var questionAskedLabel: UILabel!
    @IBOutlet var askerLabel: UILabel!
    @IBOutlet var answerStatusLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Will update cell based on the question.
    func updateViews() {
        questionAskedLabel.text = question?.question
        askerLabel.text = question?.answerer
        if question?.answer == nil {
            questionAskedLabel.text = "Can You Answer This?"
        } else {
            questionAskedLabel.text = "Answered"
        }
    }
 

}
