//
//  QuestionController.swift
//  Q-and-A
//
//  Created by Vijay Das on 10/11/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

class QuestionController {
    static let shared = QuestionController()
    private init() {}
    
    var questions: [Question] = []
}
