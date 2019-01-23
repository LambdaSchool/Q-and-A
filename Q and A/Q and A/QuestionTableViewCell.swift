//
//  QuestionTableViewCell.swift
//  Q and A
//
//  Created by Diante Lewis-Jolley on 1/23/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

protocol QuestionTableViewCellDelegate: class {
    func shareQuestion(for: QuestionTableViewCell)
}

class QuestionTableViewCell: UITableViewCell {

    private func updateViews() {
        guard let question = question else { return }
        questionLabel.text = question.question
    }



    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var askedByLabel: UILabel!
    weak var delegate: QuestionTableViewCellDelegate?
    var question: Question? {
        didSet {
            updateViews()
        }
    }
}
