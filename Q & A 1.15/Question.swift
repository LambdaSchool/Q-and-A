import Foundation

struct Question {
    var question: String
    var asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String, answer: String = "", answerer: String = "") {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}
