//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Stuart on 1/15/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

    private func updateViews() {
        guard let question = question else { return }
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        if question.answer == nil && question.answerer == nil {
            statusLabel.text = "Can you answer this?"
        } else {
            statusLabel.text = question.answer
        }
    }
    
    // IBOutlets & Properties
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
}
