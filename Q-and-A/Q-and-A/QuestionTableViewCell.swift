//
//  QuestionTableViewCell.swift
//  Q-and-A
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Dillon McElhinney. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var askedByTextLabel: UILabel!
    @IBOutlet weak var instructionTextLabel: UILabel!
    

}
