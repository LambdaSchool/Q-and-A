//
//  Question.swift
//  Q and A
//
//  Created by Michael Redig on 4/25/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import Foundation

struct Question: Equatable {
	let question: String
	let asker: String
	var answer: String?
	var answerer: String?
	
	init(question: String, asker: String, answer: String? = nil, answerer: String? = nil) {
		self.question = question
		self.asker = asker
		self.answer = answer
		self.answerer = answerer
	}
	
	static func == (lhs: Question, rhs: Question) -> Bool {
		return lhs.question == rhs.question &&
			lhs.asker == rhs.asker
	}
}
