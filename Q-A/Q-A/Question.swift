//
//  Question.swift
//  Q-A
//
//  Created by Yvette Zhukovsky on 10/10/18.
//  Copyright © 2018 Yvette Zhukovsky. All rights reserved.
//

class Question {
    
   var question: String
   var asker: String
    var answer: String?
    var answerer: String?
    
    


init(question:String, asker:String) {
    self.question = question
    self.asker = asker
    self.answer = nil
    self.answerer = nil
    
    
    
}


}

