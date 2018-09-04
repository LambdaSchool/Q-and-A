//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Moin Uddin on 9/3/18.
//  Copyright © 2018 Moin Uddin. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    func updateViews() {
        questionLabel?.text = question?.question
        askerLabel?.text = question?.asker
        question?.answer == nil ? (answerLabel?.text = "Can you answer this?") : (answerLabel?.text = "Tap to View Answer.")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    
}
