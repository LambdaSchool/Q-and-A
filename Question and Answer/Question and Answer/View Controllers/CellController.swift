//
//  CellController.swift
//  Question and Answer
//
//  Created by Lotanna Igwe-Odunze on 10/23/18.
//  Copyright © 2018 Lotanna. All rights reserved.
//

import Foundation
import UIKit

class CellController: UITableViewCell {
    
    func showQuestions() {
            
        self.textLabel?.text = thequestions[IndexPath().row].question

    }
    
}
