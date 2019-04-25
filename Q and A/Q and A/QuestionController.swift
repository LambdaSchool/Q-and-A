//
//  QuestionController.swift
//  Q and A
//
//  Created by Michael Redig on 4/25/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import Foundation

class QuestionController {
	var questions: [Question] = []
	
	init() {
		createQuestion(question: "How much?", asker: "Borat")
	}
	
	func createQuestion(question: String, asker: String) {
		let newQuestion = Question(question: question, asker: asker)
		questions.append(newQuestion)
	}
	
	func updateQuestion(question: Question, answer: String, answerer: String? = nil) {
		for index in questions.indices {
			if questions[index] == question {
				questions[index].answer = answer
				questions[index].answerer = answerer
			}
		}
	}
	
	func deleteQuestion(atIndex index: Int) {
		questions.remove(at: index)
	}
	
	func deleteQuestion(question: Question) {
		for index in questions.indices {
			if questions[index] == question {
				questions.remove(at: index)
				break
			}
		}
	}
}
