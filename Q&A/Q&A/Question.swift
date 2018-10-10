import UIKit

struct Question: Equatable {
    let question: String
    let asker: String
    var answer: String?
    var answerer: String?
    
    init(question: String, asker: String) {
        self.question = question
        self.asker = asker
        self.answer = nil
        self.answerer = nil
    }
}
