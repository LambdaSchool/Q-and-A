//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Jeremy Taylor on 2/10/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let question = question else { fatalError("Can't unwrap Question!") }
        questionLabel.text = question.question
        askedByLabel.text = question.asker
        answerLabel.text = question.answer ?? "Tap to answer"
    }
}
