//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Nikita Thomas on 10/10/18.
//  Copyright © 2018 Nikita Thomas. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var justALabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
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
    
    private func updateViews() {
        questionLabel?.text = question?.question
        askedByLabel?.text = question?.asker
        justALabel?.text = question?.answer
    
        question?.answer == nil ? (justALabel?.text = "Can you answer this?" ) : (justALabel?.text = "Tap to view Answer")
        
    }

}
