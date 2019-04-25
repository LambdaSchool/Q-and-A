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
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
