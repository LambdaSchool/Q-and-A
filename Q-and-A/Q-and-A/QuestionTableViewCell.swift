//
//  QuestionTableViewCell.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var askedByTextLabel: UILabel!
    @IBOutlet weak var instructionTextLabel: UILabel!
    @IBOutlet weak var answerTextLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Private Utility Methods
    private func updateViews() {
        //Make sure there is a question
        guard let question = question else { return }
        
        //Set the question and asker labels according to the question's properties
        questionTextLabel.text = question.question
        askedByTextLabel.text = question.asker
        
        //If there is an answer and answerer, display them below the question
        if let answer = question.answer, let answerer = question.answerer {
            instructionTextLabel.isHidden = true
            answerTextLabel.isHidden = false
            answerTextLabel.text = "\(answer) – \(answerer)"
        }
        //Otherwise, display instructions
        else {
            instructionTextLabel.isHidden = false
            instructionTextLabel.text = "Tap to answer question"
            instructionTextLabel.textColor = .red
            answerTextLabel.isHidden = true
        }
    }

}
