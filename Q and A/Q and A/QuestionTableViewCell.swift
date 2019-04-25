//
//  QuestionTableViewCell.swift
//  Q and A
//
//  Created by Michael Redig on 4/25/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

	@IBOutlet var questionLabel: UILabel!
	@IBOutlet var askedByLabel: UILabel!
	
	@IBOutlet var bottomLabel: UILabel!
	
	var question: Question? {
		didSet {
			updateViews()
		}
	}
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

	private func updateViews() {
		guard let question = question else { return }
		questionLabel.text = question.question
		askedByLabel.text = question.asker
	}

}
