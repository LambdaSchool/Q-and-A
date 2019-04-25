//
//  Question.swift
//  QandA
//
//  Created by Victor  on 4/25/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

//creating the question object
struct Question {
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String, answer: String?, answerer: String?) {
        self.question = question
        self.asker = asker
        self.answer = nil
        self.answerer = nil
    }
}
