
import Foundation


class QuestionController {
    
    private(set) var questions: [Question] = []

    //var question = questions[IndexPath.row]

    func createQuestion(question: String, asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }

    func updateQuestion(question: Question, answer: String, answerer: String) {
                guard let index = questions.index(of: question) else {return}
        
        questions[index].answer = answer
        questions[index].answerer = answerer
    }

    func deleteQuestion(question: Question) {
        guard let index = questions.index(of: question) else { return }
        questions.remove(at: index)
  //      remove[IndexPath.row]
    }
    
}
