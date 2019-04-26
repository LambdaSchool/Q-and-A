//
//  QATableViewCell.swift
//  Q&A
//
//  Created by Thomas Cacciatore on 4/25/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

class QATableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var userCreatedQuestionLabel: UILabel!
    
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var askerNameLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
}
