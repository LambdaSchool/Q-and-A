//
//  QuestionTableViewCell.swift
//  QuestionAndAnswer
//
//  Created by Dustin Koch on 1/15/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    
    func updateViews() {
        
        askedByLabel.text = question!.asker
        questionLabel.text = question!.question
        
    }
    
    //MARK: Outlets
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var viewAnswerTapped: UILabel!
    
    private func updateV() {
        guard let question = question else { return }
        questionLabel.text = question.question
        askedByLabel.text = question.answer
        
        if question.answer == nil && question.answerer == nil {
            viewAnswerTapped.text = "Can you answer this?"
        } else {
            viewAnswerTapped.text = question.answer
        }
    }
    
    
    
}
