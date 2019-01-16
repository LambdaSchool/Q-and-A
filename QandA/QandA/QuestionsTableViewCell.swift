//
//  QuestionsTableViewCell.swift
//  QandA
//
//  Created by Michael Flowers on 1/15/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {
    
    var question: Question? {
        didSet{
            updateViews()
        }
    }
    
    @IBOutlet weak var questLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var otherLabel: UILabel!
    
    func updateViews(){
        guard let passedInQuestion = question else { return }
        questionLabel.text = passedInQuestion.question
        askedByLabel.text = passedInQuestion.asker
        if otherLabel.text == nil {
            otherLabel.text = "Press here to answer."
        } else {
            otherLabel.text = passedInQuestion.answer
        }
    }
}
