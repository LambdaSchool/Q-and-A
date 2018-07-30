//
//  QuestionModel.swift
//  Q&A
//
//  Created by William Bundy on 7/30/18.
//  Copyright © 2018 William Bundy. All rights reserved.
//

import Foundation

struct Question: Equatable
{
	var asker:String
	var question:String
	var answerer:String
	var response:String
	var isAnswered:Bool

}

protocol QuestionConsumer
{
	var controller:QuestionController! {get set}
}

class QuestionController
{
	static var instance = QuestionController()

	var questions:[Question] = []

	func add(_ q:Question)
	{
		questions.append(q)
	}

	@discardableResult
	func create(_ q:String, by:String) -> Question
	{
		let q = Question(asker:by, question:q, answerer:"", response:"", isAnswered:false)
		add(q)
		return q
	}

	func answer(_ q:Question, answer:String, by:String)
	{
		guard let index = questions.index(of:q) else {return}
		questions[index].answerer = by
		questions[index].response = answer
		questions[index].isAnswered = true
	}

}
