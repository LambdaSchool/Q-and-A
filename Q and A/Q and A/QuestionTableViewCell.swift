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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var askedByLabel: UILabel!

}
