//
//  QuestionTableViewCell.swift
//  Q&A
//
//  Created by Stuart on 1/15/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var questionLAbel: UILabel!
    
    @IBOutlet weak var askerLabel: UILabel!
    
    
    @IBOutlet weak var statusLabel: UILabel!
}
