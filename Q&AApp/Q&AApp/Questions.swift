//
//  File.swift
//  Q&AApp
//
//  Created by Lambda_School_Loaner_18 on 10/10/18.
//  Copyright © 2018 Lambda_School_Loaner_18. All rights reserved.
//

import Foundation


struct Question: Equatable {
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?

    init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
    }
}
