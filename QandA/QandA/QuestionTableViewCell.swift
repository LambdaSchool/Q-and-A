//
//  QuestionTableViewCell.swift
//  QandA
//
//  Created by Moses Robinson on 10/10/18.
//  Copyright © 2018 Moses Robinson. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var askedByNameLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
