import UIKit

class QuestionController {
    
    var questions: [Question] = []
    
    //Now we're creating
    
    func createQuestion(question:String, asker: String) {
        let question = Question(fromQuestion: question, asker: asker)
        questions.append(question)
    }
    
    //update
    
    func updateQuestion(question: Question, answer: String, answerer: String) {
        guard let index = questions.index(of: question) else {return}
        
        questions[index].answer = answer
        questions[index].answerer = answerer
    }
    
    func deleteQuestion (question: Question) {
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
    }
    
}

