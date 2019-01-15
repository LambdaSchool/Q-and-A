//
//  Question.swift
//  Q-and-A
//
//  Created by Vijay Das on 1/15/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import Foundation
import UIKit

struct Question {
    var asker: String
    var question: String
    var answer: String?
    var answerer: String?
    
    init(asker: String, question: String, answer: String?, answerer: String?) {
        self.asker = asker
        self.question = question
        self.answer = answer
        self.answerer = answerer
        
    }
    
}
