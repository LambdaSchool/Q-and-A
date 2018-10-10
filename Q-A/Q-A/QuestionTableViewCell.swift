//
//  QuestionTableViewCell.swift
//  Q-A
//
//  Created by Yvette Zhukovsky on 10/10/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    
    @IBOutlet weak var question: UIStackView!
    
    
    @IBOutlet weak var askedBy: UILabel!
    
    
    
    @IBOutlet weak var answer: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
