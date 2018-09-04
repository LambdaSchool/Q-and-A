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
        print(question)
        questionLabel?.text = question?.question
        askerLabel?.text = question?.asker
        question?.answer == nil ? (answerLabel?.text = "Tap to view answer.") : (answerLabel?.text = "Can you answer this?")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
