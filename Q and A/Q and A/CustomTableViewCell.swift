//
//  CustomTableViewCell.swift
//  Q and A
//
//  Created by Cameron Dunn on 1/15/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    var question : Question? = nil{
        didSet{
            updateViews()
        }
    }
    private func updateViews(){
        askedByLabel.text = question!.asker
        questionLabel.text = question!.question
        
    }
}
