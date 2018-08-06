//
//  QuestionsTableViewCell.swift
//  QandA
//
//  Created by Lisa Sampson on 8/6/18.
//  Copyright © 2018 Lisa Sampson. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
}
